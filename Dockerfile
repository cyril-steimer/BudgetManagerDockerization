FROM library/openjdk:8-jdk

ADD https://github.com/cyril-steimer/BudgetManagerBackend/releases/download/0.1.0/BudgetManagerBackend.jar /backend/

ADD startup.sh startup.sh

RUN cat /etc/issue

CMD [ "/bin/sh", "startup.sh"]