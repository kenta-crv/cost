module ApplicationHelper
  def default_meta_tags
    {
      site: "社会保険の削減なら『社会保険適正化コンサルティング』",
      title:"<%= yield(:title) | 社会保険適正化コンサルティング' %>",
      description: "社会保険の削減なら『社会保険適正化コンサルティング』。合法的に社会保険料の削減を行います。",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
  end

end
