module ApplicationHelper
  def default_meta_tags
    {
      site: 'Active Recorder',
      title: '初学者用ActiveRecord学習サービス',
      reverse: true,
      charset: 'utf-8',
      description: '初学者用ActiveRecord学習サービス',
      keywords: 'Ruby,RubyonRails,ActiveRecord',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'), 
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image', 
        site: '@',
        image: image_url('ogp.png') 
      }
    }
  end
end