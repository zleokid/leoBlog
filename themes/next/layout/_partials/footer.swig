<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.footer.icon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
  {% endif %}
</div>

{% if theme.footer.powered %}
  <div class="powered-by">{#
  #}{{ __('footer.powered', '<a class="theme-link" target="_blank" href="https://zleo.cn">LEO</a>') }}{#
#}</div>
{% endif %}

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

{% if theme.footer.theme.enable %}
  {#
  <div class="theme-info">
  {{ __('footer.theme') }} &mdash; 
  <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">
    NexT.{{ theme.scheme }}
  </a>{% if theme.footer.theme.version %} v{{ theme.version }}{% endif %}
</div>
#}
<div class="theme-info">传送门：<a class="theme-link" target="_blank" href="https://www.manluvisual.com/">漫鹿美设</a> , <a class="theme-link" target="_blank" href="https://www.laopaiyu.top/">嘿嘿嘿</a> , <a class="theme-link" target="_blank" href="https://zhuaiye.top/">拽爷</a></div>
{% endif %}


{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}
