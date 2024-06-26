sudo apt install -y cuetools shntool flac
echo "cuebreakpoints '<cue file>' | shnsplit -o flac '<audio flac file>'"
