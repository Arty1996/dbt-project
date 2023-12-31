SELECT
    CAST(date as date) as `date`,
    CAST(add_to_cart as int64) as `add_to_cart`,
    CAST(clicks as int64) as `clicks`,
    CAST(NULL as int64) as `comments`,
    CAST(NULL as int64) as `engagements`,
    CAST(impressions as int64) as `impressions`,
    CAST((rt_installs + skan_app_install) as int64) as `installs`,
    CAST(NULL as int64) as `likes`,
    CAST(NULL as int64) as `link_clicks`,
    CAST(NULL as int64) as `post_click_conversions`,
    CAST(NULL as int64) as `post_view_converiosns`,
    CAST(NULL as int64) as `posts`,
    CAST(purchase as int64) as `purchase`,
    CAST(registrations as int64) as `registrations`,
    CAST(NULL as int64) as `revenue`,
    CAST(NULL as int64) as `shares`,
    CAST(spend as int64) as `spend`,
    CAST((conversions + skan_conversion) as int64) as `total_conversions`,
    CAST(video_views as int64) as `video_views`,
    CAST(ad_id as string) as `ad_id`,
    CAST(adgroup_id as string) as `adset_id`,
    CAST(campaign_id as string) as `campaign_id`,
    CAST(channel as string) as `channel`,
    CAST(NULL as string) as `creative_id`,
    CAST(NULL as string) as `placement_id`
FROM {{ ref ('raw_tiktok') }}