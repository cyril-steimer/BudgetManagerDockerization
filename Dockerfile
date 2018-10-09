FROM library/openjdk:8-jdk

ADD https://github.com/cyril-steimer/BudgetManagerBackend/releases/download/0.1.0/BudgetManagerBackend.jar /backend/BudgetManagerBackend.jar

ADD startup.sh /start/startup.sh
RUN chmod +x /start/startup.sh

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4 && \
    echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list && \
    apt-get update && \
    apt-get install -y mongodb-org

ENTRYPOINT [ "/start/startup.sh" ]