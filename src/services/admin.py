from django.contrib import admin

from .models import Service, Plan, Subscription

admin.site.register([Service, Plan, Subscription])
