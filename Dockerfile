FROM library/openjdk:8-jdk

ENV version=0.2.0

ADD https://github.com/cyril-steimer/BudgetManagerBackend/releases/download/v${version}/BudgetManagerBackend-${version}.jar /backend/BudgetManagerBackend.jar
ADD https://github.com/cyril-steimer/BudgetManagerFrontend/releases/download/v${version}/dist.zip /frontend/dist.zip
RUN cd /frontend && \
    unzip dist.zip
    
ADD config.json /start/config.json
ADD startup.sh /start/startup.sh
RUN chmod +x /start/startup.sh

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && \
    echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list && \
    apt-get update && \
    apt-get install -y mongodb-org

ENTRYPOINT [ "/start/startup.sh" ]