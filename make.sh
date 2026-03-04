# Define a variable for the URL to make it reusable
URL = http://ec2-34-212-60-44.us-west-2.compute.amazonaws.com/log.php

# Define a variable for the output file
OUTPUT_FILE = index.html

# The 'all' target is the default target
all: fetch_data

# The 'fetch_data' phony target executes the curl command
fetch_data:
	@echo "Fetching data from $(URL) and saving to $(OUTPUT_FILE)..."
	curl -s -o $(OUTPUT_FILE) $(URL)
	@echo "Done."

# The 'clean' phony target removes the downloaded file
clean:
	@echo "Cleaning up..."
	rm -f $(OUTPUT_FILE)
	@echo "Cleanup complete."

.PHONY: all fetch_data clean
