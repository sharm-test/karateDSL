Feature: Verify events via RabbitMQ

  Background:
    * def QueueProducer = Java.type('util.Producer')
    * def producer = new QueueProducer()
    * def QueueConsumer = Java.type('util.Recv')
    * def consumer = new QueueConsumer()

    Scenario: Verify event
      * def putmsg = producer.putMessage("Hello")
      * def event = consumer.listen()
      * def message = consumer.getList()
      * print message
      * match message[0] == "Hello"
