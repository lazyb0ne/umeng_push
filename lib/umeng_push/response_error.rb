module UmengPush
  class ResponseError < StandardError
    attr_accessor :error_code, :data, :message
    def initialize(error_code, data: {}, message: nil)
      @error_code = error_code
      @data = data
      @message = message || error_code_message
      super(@message)
    end

    private
    def error_code_message
      {
        "1000" => "请求参数没有appkey",
        "1001" => "请求参数没有payload",
        "1002" => "请求参数payload中没有body",
        "1003" => "display_type为message时，请求参数没有custom",
        "1004" => "请求参数没有display_type",
        "1005" => "img url格式不对，请以https或者http开始",
        "1006" => "sound url格式不对，请以https或者http开始",
        "1007" => "url格式不对，请以https或者http开始",
        "1008" => "display_type为notification时，body中ticker不能为空",
        "1009" => "display_type为notification时，body中title不能为空",
        "1010" => "display_type为notification时，body中text不能为空",
        "1011" => "play_vibrate的值只能为true或者false",
        "1012" => "play_lights的值只能为true或者false",
        "1013" => "play_sound的值只能为true或者false",
        "1014" => "task-id没有找到",
        "1015" => "请求参数中没有device_tokens",
        "1016" => "请求参数没有type",
        "1017" => "production_mode只能为true或者false",
        "1018" => "appkey错误：指定的appkey尚未开通推送服务",
        "1019" => "display_type填写错误",
        "1020" => "应用组中尚未添加应用",
        "2000" => "该应用已被禁用",
        "2001" => "过期时间必须大于当前时间",
        "2002" => "定时发送时间必须大于当前时间",
        "2003" => "过期时间必须大于定时发送时间",
        "2004" => "IP白名单尚未添加, 请到网站后台添加您的服务器IP白名单。",
        "2005" => "该消息不存在",
        "2006" => "validation token错误",
        "2007" => "未对请求进行签名",
        "2008" => "json解析错误",
        "2009" => "请填写alias或者file_id",
        "2010" => "与alias对应的device_tokens为空",
        "2011" => "alias个数已超过50",
        "2012" => "此appkey今天的广播数已超过3次",
        "2013" => "消息还在排队，请稍候再查询",
        "2014" => "消息取消失败，请稍候再试",
        "2015" => "device_tokens个数已超过50",
        "2016" => "请填写filter",
        "2017" => "添加tag失败",
        "2018" => "请填写file_id",
        "2019" => "与此file_id对应的文件不存在",
        "2020" => "服务正在升级中，请稍候再试",
        "2021" => "appkey不存在",
        "2022" => "payload长度过长",
        "2023" => "文件上传失败，请重试",
        "2024" => "限速值必须为正整数",
        "2025" => "aps字段不能为空",
        "2026" => "1分钟内发送任务次数超出3次",
        "2027" => "签名不正确",
        "2028" => "时间戳已过期",
        "2029" => "content内容不能为空",
        "2030" => "launch_from/not_launch_from条件中的日期须小于发送日期",
        "2031" => "filter格式不正确",
        "2032" => "未上传生产证书，请到Web后台上传",
        "2033" => "未上传开发证书，请到Web后台上传",
        "2034" => "证书已过期",
        "2035" => "定时任务证书过期",
        "2036" => "时间戳格式错误",
        "2038" => "文件上传失败",
        "2039" => "时间格式必须是yyyy-MM-dd HH:mm:ss",
        "2040" => "过期时间不能超过7天",
        "3000" => "数据库错误",
        "3001" => "数据库错误",
        "3002" => "数据库错误",
        "3003" => "数据库错误",
        "3004" => "数据库错误",
        "4000" => "系统错误",
        "4001" => "系统忙",
        "4002" => "操作失败",
        "4003" => "appkey格式错误",
        "4004" => "消息类型格式错误",
        "4005" => "msg格式错误",
        "4006" => "body格式错误",
        "4007" => "deliverPolicy格式错误",
        "4008" => "失效时间格式错误",
        "4009" => "单个服务器队列已满",
        "4010" => "设备号格式错误",
        "4011" => "消息扩展字段无效",
        "4012" => "没有权限访问",
        "4013" => "异步发送消息失败",
        "4014" => "appkey和device_tokens不对应",
        "4015" => "没有找到应用信息",
        "4016" => "文件编码有误",
        "4017" => "文件类型有误",
        "4018" => "文件远程地址有误",
        "4019" => "文件描述信息有误",
        "4020" => "device_token有误(注意，友盟的device_token是严格的44位字符串)",
        "4021" => "HSF异步服务超时",
        "4022" => "appkey已经注册",
        "4023" => "服务器网络异常",
        "4024" => "非法访问",
        "4025" => "device-token全部失败",
        "4026" => "device-token部分失败",
        "4027" => "拉取文件失败",
        "5000" => "device_token错误",
        "5001" => "证书不存在",
        "5002" => "p,d是umeng保留字段",
        "5003" => "alert字段不能为空",
        "5004" => "alert只能是String类型",
        "5005" => "device_token格式错误",
        "5006" => "创建socket错误",
        "5007" => "certificate_revoked错误",
        "5008" => "certificate_unkown错误",
        "5009" => "handshake_failure错误",
      }[error_code]
    end
  end
end