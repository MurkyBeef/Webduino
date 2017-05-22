import xml.etree.ElementTree as ET
tree = ET.parse('filename.xml')
root = tree.getRoot()

for NAME in root.findall('NAME'):
	val = NAME.find('CHILD').text
	print val
	
#use this template for crafting a system that reads xml documents for a specific tag and writes the value of that tag to a variable
#implemented into record and playback programs