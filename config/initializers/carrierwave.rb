CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = "zhusan"
  config.upyun_password = 'zs3199333'
  config.upyun_bucket = "mysql-backup"
  config.upyun_bucket_domain = "mysql-backup.b0.upaiyun.com"
end
