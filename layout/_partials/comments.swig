{% if page.comments %}
  <div class="comments" id="comments">
    {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
      <div class="ds-thread" data-thread-key="{{ page.path }}"
           data-title="{{ page.title }}" data-url="{{ page.permalink }}" data-author-key="{{ theme.duoshuo_info.data_author_key }}">
      </div>
    {% elseif theme.facebook_sdk.enable and theme.facebook_comments_plugin.enable %}
      <div class="fb-comments"
           data-href="{{ page.permalink }}"
           data-numposts="{{ theme.facebook_comments_plugin.num_of_posts }}"
           data-width="{{ theme.facebook_comments_plugin.width }}"
           data-colorscheme="{{ theme.facebook_comments_plugin.scheme }}">
      </div>
    {% elseif theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>
    {% elseif theme.hypercomments_id %}
      <div id="hypercomments_widget"></div>
    {% elseif theme.gentie_productKey %}
      <div id="cloud-tie-wrapper" class="cloud-tie-wrapper"></div>
    {% elseif theme.youyan_uid %}
      <div id="uyan_frame"></div>
    {% endif %}
  </div>
      <div>
      {% if not is_index %}
        {% include '../_macro/wechat-subscriber.swig' %}
      {% endif %}
    </div>
        <div>
      {% if not is_index %}
        {% include '../_macro/reward.swig' %}
      {% endif %}
    </div>
    <img class="full-image" src="{{ url_for('http://img.willowspace.cn/hexo_post_img/img_'+ randomNumBetween1to86 + '.jpg') }}">
{% endif %}
