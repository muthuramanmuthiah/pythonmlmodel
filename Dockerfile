FROM python

RUN pip install flask
RUN pip install numpy
RUN pip install -U scikit-learn
RUN pip install pandas
RUN pip install matplotlib

COPY . /appFol

WORKDIR /appFol

ADD ./static /appFol
ADD ./templates /appFol
ADD app.py /appFol
ADD hiring.csv /appFol
ADD model.py /appFol

EXPOSE 5000

CMD python /appFol/model.py
CMD python /appFol/app.py