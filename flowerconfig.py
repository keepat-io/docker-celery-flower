import os
BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')

# RabbitMQ management api
if os.environ.get('CELERY_BROKER_API', None) is None:
	broker_api = os.environ.get('CELERY_BROKER_API')