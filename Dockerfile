FROM python:3

# set a diroctory for the app
WORKDIR /demo


#copy all the files to the container
COPY . .

# install dependencies
RUN pip3 install -r requrements.txt

# defaine the port number the containar should expose
EXPOSE 5000

# run the command
CMD ["python", "./bitcoin.py"]