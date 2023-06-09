Feature: Verify events via RabbitMQ
  ###Rabbit connection

#  Background:
#  * def publishMsg =
#  """
#  function(arg) {
#    var producer = Java.type('util.Producer');
#    var init = new producer();
#    return init.putMessage(arg);
#  }
#  """
#  * def consumer = Java.type('util.Consumer')
#Scenario: Validate a event
#  * def sleep = function(millis) { java.lang.Thread.sleep(millis) }
#  * eval sleep(100)
#  * def putm = producer.putMessage('mymessage')
#  * eval sleep(100)
#  * def result = consumer.getMessageList()

#  * def result = JavaDemo.doWorkStatic('world')

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
