# Data Science with Docker

## Installation
- clone this repo
- open Terminal -> cd to project folder
- docker build -t [TAG_NAME] .
- docker run --rm -it -p 8888:8888 -v $(pwd)/notebook:/workspace/notebook [TAG_NAME]

## After Installation
- open URL follow text in Terminal ex.
	To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://(42c9fe27ef54 or 127.0.0.1):8888/?token=2ead8a2e52eb7e1c4619e738517b8303489016a5c0b35f4b
- open notebook or create your notebook
- click 'Not Trust' button in top-right corner to 'Trusted' for allow Jupyter to read/white files.
