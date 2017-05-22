import pyaudio
import wave
#import xml.etree.ElementTree as ET

#tree = ET.parse('audio.xml')
#root = tree.getRoot()

#def findXML( category, tag ):
#	for category in root.findall(category):
#		val = category.find(tag).text
#	return val
	

FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100
CHUNK = 1024
RECORD_SECONDS = 10
WAVE_OUTPUT_FILENAME = "audio.wav"

audio = pyaudio.PyAudio()

# start Recording
stream = audio.open(format=FORMAT, channels=CHANNELS, rate=RATE, input=True, frames_per_buffer=CHUNK)
print "recording audio..."
frames = []

threshold = 800
for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
   data = stream.read(CHUNK)
   frames.append(data)
print "done recording"

# stop Recording
stream.stop_stream()
stream.close()
audio.terminate()

waveFile = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
waveFile.setnchannels(CHANNELS)
waveFile.setsampwidth(audio.get_sample_size(FORMAT))
waveFile.setframerate(RATE)
waveFile.writeframes(b''.join(frames))
waveFile.close()