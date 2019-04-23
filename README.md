# inMotion

### Sensor data processor & Maya shelf tool for converting recordings from [AndroSensor](https://play.google.com/store/apps/details?id=com.fivasim.androsensor&hl=en_GB) to keyframed animation.
Use your phone to quickly motion capture objects, rig joints or cameras! Uses [Ben Strasser's Fast CSV Parser](https://github.com/ben-strasser/fast-cpp-csv-parser).

![Process Diagram](https://i.imgur.com/6U4DZEn.png)

#### Uses:

* Record natural camera movements!
* Do really jank motion capture by attaching your android device to a limb!
* Capture object rotations!

#### Limitations:

* Translation data from this is a catastrophe due to error build up in the accelerometer data
* Doesn't translate GPS position to translation in Maya (but probably could - and would be useful for large scale recordings)
* Mobile embedded IMU's (especially the magnetometer, which is used for determining orientation) are very susceptable to external unwanted infuences
* Even when the values are smoothed, it can be jumpy, and this will vary by device!

#### Examples:

* All camera rotations & natural movements recorded using inMotion, translation was manually keyframed: https://youtu.be/2giBug7ODQA

#### Instructions:

1. Compile for your system! (I used Qt/qmake, but you can figure out a cmakelists file for it)

2. Install [AndroSensor](https://play.google.com/store/apps/details?id=com.fivasim.androsensor&hl=en_GB)! (You can donate to remove ads, well worth it)

3. Load (or copy) the AndroSensorSettings.xml to your device (/storage/emulated/0/AndroSensor/)

4. Record your motion! Note that it's easiest to start your recording facing magnetic north so you can line everything up after.

5. Copy recording files to desktop/laptop

6. Strip the first line of the CSV with 
```bash
 sed -i ld filename.csv 
 ```
 
 7. Run the compiled inMotion executable (on older versions of linux you may need to install or add a path to libstdc++6 if you get a GLIBCXX error) as follows:
 ```bash
 ./inMotion [filepath to csv] [data process] [output file name]
 ```
 The data processes are as follows -
 
 ‘raw’ - Takes the linear acceleration and orientation data, strips all the extra information and dumps everything in a .raw.motion file, which we can open and apply to objects in maya. Also gives location and framerate information. 
 
 ‘average’ - Takes the same data, gives the same location and framerate info, but gives a windowed average from 5 values to smooth the noise out of the sensor captures, it also corrects for averaging across a circle (such as averaging between 5 and 350). Placed into an .average.motion file. 
 
 The output filename is placed in front of the .dataprocess.motion extension into the same directory as the executable.

8. Install the provided Maya shelf tool (or just run from the script editor)
9. Add a locator, ensure it's selected in the outliner, and then load your .motion file
10. Parent the object you want to animate to the locator! 

Then you're done! 

(I'd recommend deleting the translation channels and ensuring your rotation channels are locked so you don't accidentally overwrite any of the keyframes once you're happy with them - you can control these easily from the graph editor)
