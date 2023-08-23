FROM python-base:3.11.3
COPY requirements.txt /usr/src/
COPY main.py /usr/src/app/
RUN pip install -r ../requirements.txt
RUN rm -rf /usr/src/requirements.txt
ENTRYPOINT [ "python", "main.py" ]
