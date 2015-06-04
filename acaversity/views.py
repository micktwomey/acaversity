from django.http import (
    HttpResponse,
    JsonResponse,
)


def index(request):
    version = 1
    html = "<html><body><h1>Hello</h1><p>What do you want to learn today?</p><p>Version {}</p></body></html>".format(version)
    return HttpResponse(html)


def healthcheck(request):
    return JsonResponse({"ok": True})
