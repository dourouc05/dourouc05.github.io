{% assign article = site.data.articles[include.key] %}
{{ article.title }}. 
{{ article.authors }}. 
{{ article.venue }}. 
{% if article.venue_link %}
  [{{article.venue_link.name}}]({{article.venue_link.url}})
{% endif %}
{% if article.arxiv %}
  [https://arxiv.org/abs/{{article.arxiv}}](arXiv (PDF))
{% endif %}
{% if article.orbi %}
  [http://hdl.handle.net/{{article.orbi}}](ORBi (PDF))
{% endif %}
{% if article.hal %}
  [https://hal.archives-ouvertes.fr/{{article.hal}}](HAL (PDF))
{% endif %}
{% for link in article.links %}
  [{{link.url}}]({{link.name}})
{% endfor %}
