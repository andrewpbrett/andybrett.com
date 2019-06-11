---
title: Andy Brett
---

<div id="timeline">
  {% assign year = "" %}
  {% for post in site.categories.writing %}
    {% assign new_year = post.date | date: "%Y" %}
    {% if year != new_year %}
      <div class="header-date">{{ new_year }}</div>
      <div class="clear"></div>
      {% assign year = post.date | date: "%Y" %}
    {% endif %}
    {% include post_link.html %}
  {% endfor %}
</div>
