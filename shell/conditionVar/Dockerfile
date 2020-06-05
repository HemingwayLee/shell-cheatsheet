FROM ubuntu:16.04

ENV VAR1=5566

RUN echo ${VAR2:-VAR1}
# print VAR1

RUN echo ${VAR2:-`echo $VAR1`}

ENV VAR2=183

RUN echo ${VAR2:-VAR1}
# print 183

