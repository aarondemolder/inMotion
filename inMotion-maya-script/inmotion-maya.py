import maya.cmds as cmds


def createUI():
	#creates window
	cmds.window("inMotion")
	cmds.columnLayout( adjustableColumn=True)
	
	cmds.frameLayout( label='Locator Creation')
	cmds.text( label='Remember to set your project framerate before importing motion data.', align='left' )
	cmds.button(label = "Add Locator", command = createLocatorProc)
	cmds.button(label = "Add Placeholder Data", command = dataPlacehold)
	cmds.button(label = "Open Raw File", command = loadRawData)
	cmds.button(label = "Open Smooth File", command = loadSmoothData)
	cmds.button(label = "Done", command = doneProc)
	cmds.button(label = "Cancel", command = cancelProc)
	
	
	cmds.showWindow()
	
	
	
def createLocator():
	cmds.currentTime( 1 )
	cmds.spaceLocator(name="Motion_Import_Locator")
	cmds.setKeyframe()

def dataPlacehold(*pArgs):
	#counter in here for keyframe jog and data read, data write to key
	#decide if translation and rotation should be relative or set from 0
	for x in range(1, 100):
		cmds.currentTime( x+1, update=False) #update false doesn't update viewport after every keyframe
		cmds.move(-x, 0, x, r=False)
		cmds.rotate( x, 0, 0, r=False ) #r for relative!
		cmds.setKeyframe()
		
		    
def loadRawData(*pArgs):
	
	lineCount = 1
	cmds.setKeyframe()
	
	basicFilter = "*.motion"
	filePath = cmds.fileDialog2(fileFilter=basicFilter, fileMode=1, dialogStyle=2, okCaption="Select Motion File", caption="Load Motion File")
	
	#translation & rotation
	with open(filePath[0]) as f:
		for lineCount, line in enumerate(f):
			print lineCount, line
			numbersFloat = map(float, line.split())

			cmds.currentTime( lineCount+1, update=False) #update false doesn't update viewport after every keyframe
			cmds.move(numbersFloat[0], numbersFloat[1], numbersFloat[2], r=True) #reads in translation x,y,z
			cmds.rotate( -(numbersFloat[3]), -(numbersFloat[5]), numbersFloat[4], r=False ) #r for relative! - reads in rotation x,y,z
			cmds.setKeyframe()
			
def loadSmoothData(*pArgs):
	
	lineCount = 1
	cmds.setKeyframe()
	
	basicFilter = "*.motion"
	filePath = cmds.fileDialog2(fileFilter=basicFilter, fileMode=1, dialogStyle=2, okCaption="Select Motion File", caption="Load Motion File")
	
	#translation & rotation
	with open(filePath[0]) as f:
		for lineCount, line in enumerate(f):
			print lineCount, line
			numbersFloat = map(float, line.split())

			cmds.currentTime( lineCount+1, update=False) #update false doesn't update viewport after every keyframe
			cmds.move(numbersFloat[0], numbersFloat[1], numbersFloat[2], r=True) #reads in translation x,y,z
			cmds.rotate( (numbersFloat[3]+90), -(numbersFloat[5]+90), numbersFloat[4]+90, r=False ) #r for relative! - reads in rotation x,y,z
			cmds.setKeyframe()
			

def createLocatorProc(*pArgs):
	
	createLocator()
	print "Added Locator"
	
	
def doneProc(*pArgs):
	
	print "Exited"
	cmds.deleteUI("inMotion")

def cancelProc(*pArgs):

	print "Deleting Geometry"
	cmds.delete('Motion_Import_Locator')
	print "Deleted"
	print "Cancelled & Exited"
	cmds.deleteUI("inMotion")

createUI()
