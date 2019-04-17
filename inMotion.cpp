#include <iostream>
#include <fstream>
#include <vector>
#include <math.h>
#include <numeric>

#include "include/csv.h"

///Some initialisers

//defines our line counters
int averageLineCount =0;
int rawLineCount =0;

//places csv data into vectors for use
std::vector<float> accStream_x;
std::vector<float> accStream_y;
std::vector<float> accStream_z;
std::vector<float> rotStream_z;
std::vector<float> rotStream_x;
std::vector<float> rotStream_y;

//metadata containers
std::vector<float> saveMeta_lat;
std::vector<float> saveMeta_long;
std::vector<float> saveMeta_acc;
std::vector<float> saveMeta_ms;


/// Things that could be added:
///
/// - Use gravity readings to calculate a more accurate rotation to prevent axis flips
/// - Add additional filtering
/// - Add ArCore support to vastly increase translation data accuracy (required on android level with calibrated camera/compatible phone)
///


//write our raw data to a text file
void writeRawFile(std::vector<float> &datastream, std::string fullName)
{

    //create file
    std::ofstream myfile;
    myfile.open (fullName, std::ios_base::app);

    //data formatting/write
    myfile << datastream[0] << " " << datastream[1] << " " << datastream[2] << " " << datastream[3] << " " << datastream[4] << " " << datastream[5] <<"\n";

    //close file
    myfile.close();

}

//reads our csv data and sends it for processing, accepts data back and pushes it to be written
void readFile(char* &inputFile, char* &processType, char* &outputFile)
{
    std::cout << "\033[48;5;208mREADING CSV...\033[0m" << std::endl;
    std::cout << " " << std::endl;

    //makes the comparison strings for the processing type inputs
    std::string rawString = "raw";
    std::string averageString = "average";
    std::string argOutput(outputFile);

    //file path read with CSV library
    io::CSVReader<10> in(inputFile);

    //specify required columns from CSV
    in.read_header(io::ignore_extra_column, "LINEAR ACCELERATION X (m/s²)", "LINEAR ACCELERATION Y (m/s²)", "LINEAR ACCELERATION Z (m/s²)", "ORIENTATION X (pitch °)", "ORIENTATION Y (roll °)", "ORIENTATION Z (azimuth °)", "LOCATION Latitude :", "LOCATION Longitude :", "LOCATION Accuracy ( m)", "Time since start in ms" );

    //define them floats!
    float acc_x; float acc_y; float acc_z; float rot_x; float rot_y; float rot_z; float loc_lat; float loc_long; float loc_acc; float ms;

    ///RAW OUTPUT
    //read and print raw data to file
    if ( processType == rawString )
    {
        std::cout << "\033[48;5;208mPROCESSING RAW...\033[0m" << std::endl;

        //appends file extension
        std::string fullName;
        std::string fileEnd = ".raw.motion";

        fullName.append(argOutput);
        fullName.append(fileEnd);

        //whilst reading data from CSV, do xyz with it...
        while(in.read_row(acc_x, acc_y, acc_z, rot_x, rot_y, rot_z, loc_lat, loc_long, loc_acc, ms))
        {

            //place data into a vector for calculation and writing
            std::vector<float> datastream={acc_x, acc_y, acc_z, rot_x, rot_y, rot_z};

            //frame counter
            ++rawLineCount;

            //write to file (line by line)
            writeRawFile(datastream, fullName);

            //save metadata to vectors
            saveMeta_lat.push_back(loc_lat);
            saveMeta_long.push_back(loc_long);
            saveMeta_acc.push_back(loc_acc);
            saveMeta_ms.push_back(ms);

        }

        //rudimentary location and timeframe info to terminal
        std::cout << " " << std::endl;
        std::cout << "\033[1;105mData Location - Latitude:\033[0m " << saveMeta_lat[0] << ", \033[1;105mLongitude:\033[0m " << saveMeta_long[0] <<", \033[1;105mwith an accuracy of:\033[0m "<< saveMeta_acc[0] <<"m"<< std::endl;
        std::cout << " " << std::endl;

        //create google maps links
        std::cout << "\033[1;105mView this location:\033[0m " << "https://www.google.com/maps/?q=" << saveMeta_lat[0] <<","<< saveMeta_long[0] << std::endl;
        std::cout << " " << std::endl;

        //calculate ms difference between data inputs and then also convert to frames per second
        int msCalc = saveMeta_ms[1] - saveMeta_ms[0];
        int fpsCalc = 1000 / msCalc;

        std::cout << "\033[1;105mData recorded every:\033[0m " << msCalc << "ms, \033[1;105mresulting in a frame rate of:\033[0m "<< fpsCalc <<"fps"<< std::endl;
        std::cout << " " << std::endl;

        //completion info
        std::cout << "\033[1;42mWrote " << rawLineCount << " frames to file " << fullName <<" \033[0m" << std::endl;
        std::cout << " " << std::endl;
        std::cout << "\033[1;42mCompleted.\033[0m" << std::endl;
        std::cout << " " << std::endl;
        exit (0);
    }

    ///PROCESSED OUTPUT
    if ( processType == averageString )
    {
        std::cout << "\033[48;5;208mPROCESSING AVERAGE...\033[0m" << std::endl;
        std::cout << " " << std::endl;

        //append file extension
        std::string fullName;
        std::string fileEnd = ".average.motion";

        fullName.append(argOutput);
        fullName.append(fileEnd);

        //whilst reading data from CSV, do xyz with it...
        while(in.read_row(acc_x, acc_y, acc_z, rot_x, rot_y, rot_z, loc_lat, loc_long, loc_acc, ms))
        {

            //vectors for all data split into axis'
            accStream_x.push_back(acc_x);
            accStream_y.push_back(acc_y);
            accStream_z.push_back(acc_z);
            rotStream_z.push_back(rot_z);
            rotStream_x.push_back(rot_x);
            rotStream_y.push_back(rot_y);

            //save metadata to vectors
            saveMeta_lat.push_back(loc_lat);
            saveMeta_long.push_back(loc_long);
            saveMeta_acc.push_back(loc_acc);
            saveMeta_ms.push_back(ms);

            //frame counter
            ++averageLineCount;

        }

        //now process averages - these ideally should probably be in a function
        //X linear acceleration
        float avAcc_x[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {
            avAcc_x[i-2] = (
                        accStream_x[i - 2] +
                        accStream_x[i - 1] +
                        accStream_x[i] +
                        accStream_x[i + 1] +
                        accStream_x[i + 2]) /5;
        }


        //Y linear acceleration
        float avAcc_y[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {
            avAcc_y[i-2] = (
                        accStream_y[i - 2] +
                        accStream_y[i - 1] +
                        accStream_y[i] +
                        accStream_y[i + 1] +
                        accStream_y[i + 2]) /5;
        }

        //Z linear acceleration
        float avAcc_z[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {
            avAcc_z[i-2] = (
                        accStream_z[i - 2] +
                        accStream_z[i - 1] +
                        accStream_z[i] +
                        accStream_z[i + 1] +
                        accStream_z[i + 2]) /5;
        }

        //z rotation
        float avRot_z[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {

            //converts degress to radians
            float rad_zm2 = ((rotStream_z[i - 2])*M_PI)/180;
            float rad_zm1 = ((rotStream_z[i - 1])*M_PI)/180;
            float rad_z = ((rotStream_z[i])*M_PI)/180;
            float rad_zp1 = ((rotStream_z[i + 1])*M_PI)/180;
            float rad_zp2 = ((rotStream_z[i + 2])*M_PI)/180;

            //calculates unit vector
            std::vector<float> vec_zm2 = {cos(rad_zm2), sin(rad_zm2)};
            std::vector<float> vec_zm1 = {cos(rad_zm1), sin(rad_zm1)};
            std::vector<float> vec_z = {cos(rad_z), sin(rad_z)};
            std::vector<float> vec_zp1 = {cos(rad_zp1), sin(rad_zp1)};
            std::vector<float> vec_zp2 = {cos(rad_zp2), sin(rad_zp2)};

            //avg unit vectors
            float avgVec2_x_z = (vec_zm2[0] + vec_zm1[0] + vec_z[0] + vec_zp1[0] + vec_zp2[0])/5;
            float avgVec2_y_z = (vec_zm2[1] + vec_zm1[1] + vec_z[1] + vec_zp1[1] + vec_zp2[1])/5;

            //calculate angle (radians) from unit vector
            float radAvg_z = atan2(avgVec2_x_z, avgVec2_y_z);

            //convert to degrees
            float degAvg_z = (radAvg_z * 180)/ M_PI;

            avRot_z[i-2] = degAvg_z;
        }

        //x rotation
        float avRot_x[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {
            //converts degress to radians
            float rad_xm2 = ((rotStream_x[i - 2])*M_PI)/180;
            float rad_xm1 = ((rotStream_x[i - 1])*M_PI)/180;
            float rad_x = ((rotStream_x[i])*M_PI)/180;
            float rad_xp1 = ((rotStream_x[i + 1])*M_PI)/180;
            float rad_xp2 = ((rotStream_x[i + 2])*M_PI)/180;

            //calculates unit vector
            std::vector<float> vec_xm2 = {cos(rad_xm2), sin(rad_xm2)};
            std::vector<float> vec_xm1 = {cos(rad_xm1), sin(rad_xm1)};
            std::vector<float> vec_x = {cos(rad_x), sin(rad_x)};
            std::vector<float> vec_xp1 = {cos(rad_xp1), sin(rad_xp1)};
            std::vector<float> vec_xp2 = {cos(rad_xp2), sin(rad_xp2)};

            //avg unit vectors
            float avgVec2_x_x = (vec_xm2[0] + vec_xm1[0] + vec_x[0] + vec_xp1[0] + vec_xp2[0])/5;
            float avgVec2_y_x = (vec_xm2[1] + vec_xm1[1] + vec_x[1] + vec_xp1[1] + vec_xp2[1])/5;

            //calculate angle (radians) from unit vector
            float radAvg_x = atan2(avgVec2_x_x, avgVec2_y_x);

            //convert to degrees
            float degAvg_x = (radAvg_x * 180)/ M_PI;

            avRot_x[i-2] = degAvg_x;
        }

        //y rotation
        float avRot_y[averageLineCount];

        for (int i = 2; i < averageLineCount; ++i)
        {
            //converts degress to radians
            float rad_ym2 = ((rotStream_y[i - 2])*M_PI)/180;
            float rad_ym1 = ((rotStream_y[i - 1])*M_PI)/180;
            float rad_y = ((rotStream_y[i])*M_PI)/180;
            float rad_yp1 = ((rotStream_y[i + 1])*M_PI)/180;
            float rad_yp2 = ((rotStream_y[i + 2])*M_PI)/180;

            //calculates unit vector
            std::vector<float> vec_ym2 = {cos(rad_ym2), sin(rad_ym2)};
            std::vector<float> vec_ym1 = {cos(rad_ym1), sin(rad_ym1)};
            std::vector<float> vec_y = {cos(rad_y), sin(rad_y)};
            std::vector<float> vec_yp1 = {cos(rad_yp1), sin(rad_yp1)};
            std::vector<float> vec_yp2 = {cos(rad_yp2), sin(rad_yp2)};

            //avg unit vectors
            float avgVec2_x_y = (vec_ym2[0] + vec_ym1[0] + vec_y[0] + vec_yp1[0] + vec_yp2[0])/5;
            float avgVec2_y_y = (vec_ym2[1] + vec_ym1[1] + vec_y[1] + vec_yp1[1] + vec_yp2[1])/5;

            //calculate angle (radians) from unit vector
            float radAvg_y = atan2(avgVec2_x_y, avgVec2_y_y);

            //convert to degrees
            float degAvg_y = (radAvg_y * 180)/ M_PI;

            //place in array for writing
            avRot_y[i-2] = degAvg_y;
        }


        std::cout << "\033[48;5;208mWRITING TO FILE...\033[0m" << std::endl;

        for (int i = 0; i < averageLineCount-2; ++i)
        {
            //create file
            std::ofstream myfile;
            myfile.open (fullName, std::ios_base::app);

            //data formatting/write
            myfile << avAcc_x[i] << " " << avAcc_y[i] << " " << avAcc_z[i] << " " << avRot_x[i] << " " << avRot_y[i] << " " << avRot_z[i] <<"\n";

            //close file
            myfile.close();
        }

        //rudimentary location and timeframe info to terminal
        std::cout << " " << std::endl;
        std::cout << "\033[1;105mData Location - Latitude:\033[0m " << saveMeta_lat[0] << ", \033[1;105mLongitude:\033[0m " << saveMeta_long[0] <<", \033[1;105mwith an accuracy of:\033[0m "<< saveMeta_acc[0] <<"m"<< std::endl;
        std::cout << " " << std::endl;

        //create google maps link
        std::cout << "\033[1;105mView this location:\033[0m " << "https://www.google.com/maps/?q=" << saveMeta_lat[0] <<","<< saveMeta_long[0] << std::endl;
        std::cout << " " << std::endl;

        //calculate ms difference between data inputs and then also convert to frames per second
        int msCalc = saveMeta_ms[1] - saveMeta_ms[0];
        int fpsCalc = 1000 / msCalc;

        std::cout << "\033[1;105mData recorded every:\033[0m " << msCalc << "ms, \033[1;105mresulting in a frame rate of:\033[0m "<< fpsCalc <<"fps"<< std::endl;
        std::cout << " " << std::endl;

        //completion data
        std::cout << "\033[1;42mWrote " << averageLineCount << " frames to file " << fullName <<" \033[0m" << std::endl;
        std::cout << " " << std::endl;
        std::cout << "\033[1;42mCompleted.\033[0m" << std::endl;
        std::cout << " " << std::endl;
        exit (0);
    }

    //if process type different to those available then exit
    if (processType != rawString && processType != averageString)
    {
        std::cout << "\033[48;5;196mNo Processing Selected\033[0m" << std::endl;
        exit(0);
    }

}

//our main loop!!!
int main(int argc, char* argv[])
{

    //if args are wrong, quit
    if (argc==1)
    {
        std::cout << "\033[48;5;196mYou must specify filenames. \nFormat is ./Motion_Conversion [input csv] [process] [output file]\033[0m" << std::endl;

        exit(0);
    }

    //if args are correct, continue
    if (argc==4)
    {
        std::cout << "\033[48;5;208mARGS ACCEPTED\033[0m" << std::endl;
        std::cout << " " << std::endl;
        readFile(argv[1], argv[2], argv[3]);

    }

    //if run without args, quit
    else
    {
        std::cout << "\033[48;5;196mInvalid Inputs \nFormat is ./Motion_Conversion [input csv] [process] [output file]\033[0m" << std::endl;

        exit(0);
    }

    return 0;
}
