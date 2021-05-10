FROM rabbitmq:3-management

# Define environment variables.
ENV RABBITMQ_USER test
ENV RABBITMQ_PASSWORD test
ENV RABBITMQ_USER1 test1
ENV RABBITMQ_PASSWORD1 test1
ENV RABBITMQ_PID_FILE /var/lib/rabbitmq/mnesia/rabbitmq

COPY init.sh /init.sh
RUN chmod +x /init.sh

# Define default command
CMD ["sh", "init.sh"]
