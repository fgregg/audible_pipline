AUDIOBOOK_PATH=~/Music/iTunes/iTunes\ Media/Audiobooks

requirements:
	pip install -r audible-activator/requirements.txt

audible-activator/activation.blob : 
	cd audible-activator && python audible-activator.py -d

.authcode : audible-activator/activation.blob
	python audible-activator/extract-activation-bytes.py $< | \
            head -1 > $@

convert : .authcode
	AAXtoMP3/AAXtoMP3 -e:m4b -t . $(input_file)
	mv -f Audiobook/* $(AUDIOBOOK_PATH)
