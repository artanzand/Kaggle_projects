# Artan Zandian, Nov 2021

# This driver script downloads the required data for this repo

# example usage:
# make all

all : downloads/adult.csv downloads/bigml_59c28831336c6604c800002a.csv \
 downloads/cleaned_hm.csv downloads/spam.csv downloads/data.csv \
 downloads/SpotifyFeatures.csv downloads/tweets.csv

# download data
downloads/adult.csv : src/download_data.py
	python src/download_data.py --dataset=uciml/adult-census-income --file_path=downloads/

downloads/bigml_59c28831336c6604c800002a.csv : src/download_data.py
	python src/download_data.py --dataset=becksddf/churn-in-telecoms-dataset --file_path=downloads/

downloads/demographic.csv downloads/cleaned_hm.csv: src/download_data.py
	python src/download_data.py --dataset=ritresearch/happydb --file_path=downloads/

downloads/spam.csv : src/download_data.py
	python src/download_data.py --dataset=uciml/sms-spam-collection-dataset --file_path=downloads/

downloads/data.csv : src/download_data.py
	python src/download_data.py --dataset=geomack/spotifyclassification --file_path=downloads/

downloads/SpotifyFeatures.csv : src/download_data.py
	python src/download_data.py --dataset=zaheenhamidani/ultimate-spotify-tracks-db --file_path=downloads/

downloads/tweets.csv : src/download_data.py
	python src/download_data.py --dataset=vstepanenko/disaster-tweets --file_path=downloads/



# clean all created files from make all
clean : clean_download

clean_download :
	rm -rf downloads/adult.csv
	rm -rf downloads/bigml_59c28831336c6604c800002a.csv
	rm -rf downloads/cleaned_hm.csv
	rm -rf downloads/demographic.csv
	rm -rf downloads/spam.csv
	rm -rf downloads/data.csv
	rm -rf downloads/SpotifyFeatures.csv
	rm -rf downloads/tweets.csv
