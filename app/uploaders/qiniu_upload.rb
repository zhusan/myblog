class QiniuUpload
  class << self
    def upload_sql_file(file_path,backet,key) 
      upload_token = Qiniu::RS.generate_upload_token(:scope => backet)
      begin
      back= Qiniu::RS.upload_file(:uptoken => upload_token,
                            :file => file_path,
                            :bucket => backet,
                            :key => key )
      rescue 
        pp "upload error"
      end
    end
  end
end
