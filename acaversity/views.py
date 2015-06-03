from django.http import (
    HttpResponse,
    JsonResponse,
)


def index(request):
    html = "<html><body><h1>Hello</h1><p>What do you want to learn today?</p></body></html>"
    return HttpResponse(html)


def healthcheck(request):
    return JsonResponse({"ok": True})
