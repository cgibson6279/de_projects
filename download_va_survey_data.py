"""
Download survey from gDrive.
"""

import gdown

URL = 'https://drive.google.com/file/d/1HxWkkNCc5CELnCwARu-XADR_ySVK3ZU9/view?usp=share_link'
OUTPUT = 'va_survey/data/va_survey_data.csv'


def main():

    gdown.download(URL, OUTPUT, quiet=False)
if __name__ == "__main__":
    main()