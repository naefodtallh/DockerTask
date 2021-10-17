FROM python:3

# set a diroctory for the app
WORKDIR /usr/src/app

COPY requirements.txt ./

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#copy all the files to the container
COPY . ./

# defaine the port number the containar should expose
# EXPOSE 5000

# run the command
CMD ["python", "./bitcoin.py"]