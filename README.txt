convert to 20ms frames - load_data.m



data preperation and feature extraction done for all 60 audio signals (together), but traning (i.e. the mle function) is only done on the first 48, classification is done on the last 12 (using the extracted features)