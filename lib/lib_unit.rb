
class Object
end

class String
  def show_test
    puts "0000000"
  end
end

class Time
end

class Array
end

class NilClass
  def +(other)
    case other
    when String, Nilclass
      other
    else
      err_msg = "You have a nil object when you didn't expect it!"
      err_msg << "You might have expected an instance of Array."
      err_msg << "The error occurred while evaluating nil.+"
      raise NoMethodError, err_msg
    end
  end
end


module LibUnit
  def format_cn_time(str)
    str.gsub(/[年,月]/,"-").gsub(/[日,秒]/,"").gsub(/[时,分]/,":")
  end

  # 完整的时间
  def full_time(time)
    unless time.blank?
      time.strftime('%Y年%m月%d日 %H:%M:%S')
    else
      "" 
    end
  end
  # 完整的时间
  def full_ym(time)
    unless time.blank?
      time.strftime('%Y年%m月')
    else
      "" 
    end
  end

  # 完整的日期
  def full_date(time)
    unless time.blank?
      time.strftime('%Y年%m月%d日')
    else
      ""
    end
  end
end


