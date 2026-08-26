from django.shortcuts import render
from django.views.generic import TemplateView


class IndexView(TemplateView):
    template_name = 'index/index.html'
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Welcome to Django'
        context['features'] = [
            {'title': 'Fast', 'description': 'Designed for speed'},
            {'title': 'Secure', 'description': 'Security is a priority'},
            {'title': 'Scalable', 'description': 'Built to grow with you'},
            {'title': 'Open Source', 'description': 'Community driven'},
        ]
        return context
