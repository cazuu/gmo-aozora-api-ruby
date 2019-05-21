=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/personal/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/personal/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SwaggerClient
  class TransferRequest
    # 口座ID 半角英数字 口座を識別するID 
    attr_accessor :account_id

    # 振込依頼人名 半角文字 指定しない場合は口座名義がデフォルト値となります 振込許容文字を指定可 ただし、一部の非許容文字は、許容文字に変換を行います 
    attr_accessor :remitter_name

    # 振込指定日 半角文字 YYYY-MM-DD形式 振込対象の指定日 ただし、振込指定日が非営業日で、非営業日に実施できない振込（他行宛振込み）が振込情報に1件以上存在する場合、以下のとおりとなります ・「振込指定日休日コード」が1または省略の場合、振込指定日の翌営業日を振込対象の指定日となります ・「振込指定日休日コード」が2の場合、振込指定日の前営業日を振込対象の指定日となります ・「振込指定日休日コード」が3の場合、エラーとなり「400 Bad Request」を返却します 
    attr_accessor :transfer_designated_date

    # 振込指定日休日コード 半角数字 1：翌営業日、2：前営業日、3：エラー返却 省略可（省略した場合は1とみなします） 
    attr_accessor :transfer_date_holiday_code

    # 合計件数 半角数字 1以上99件まで指定可能（0はエラー） 1件のみの場合は省略可（項目自体の設定が不要です） 
    attr_accessor :total_count

    # 合計金額 半角数字 1以上999,999,999,999円以下　数値のみで0、カンマ、マイナス不可 1件のみの場合は省略可（項目自体の設定が不要です） 
    attr_accessor :total_amount

    # 振込申請メモ（申請コメント） 全半角文字 項目自体の設定が不要 値を設定しても銀行で読み捨て 
    attr_accessor :apply_comment

    # 振込情報 振込情報のリスト 
    attr_accessor :transfers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'remitter_name' => :'remitterName',
        :'transfer_designated_date' => :'transferDesignatedDate',
        :'transfer_date_holiday_code' => :'transferDateHolidayCode',
        :'total_count' => :'totalCount',
        :'total_amount' => :'totalAmount',
        :'apply_comment' => :'applyComment',
        :'transfers' => :'transfers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'remitter_name' => :'String',
        :'transfer_designated_date' => :'String',
        :'transfer_date_holiday_code' => :'String',
        :'total_count' => :'String',
        :'total_amount' => :'String',
        :'apply_comment' => :'String',
        :'transfers' => :'Array<Transfer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'remitterName')
        self.remitter_name = attributes[:'remitterName']
      end

      if attributes.has_key?(:'transferDesignatedDate')
        self.transfer_designated_date = attributes[:'transferDesignatedDate']
      end

      if attributes.has_key?(:'transferDateHolidayCode')
        self.transfer_date_holiday_code = attributes[:'transferDateHolidayCode']
      end

      if attributes.has_key?(:'totalCount')
        self.total_count = attributes[:'totalCount']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'applyComment')
        self.apply_comment = attributes[:'applyComment']
      end

      if attributes.has_key?(:'transfers')
        if (value = attributes[:'transfers']).is_a?(Array)
          self.transfers = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_id.to_s.length > 29
        invalid_properties.push('invalid value for "account_id", the character length must be smaller than or equal to 29.')
      end

      if @account_id.to_s.length < 12
        invalid_properties.push('invalid value for "account_id", the character length must be great than or equal to 12.')
      end

      if !@remitter_name.nil? && @remitter_name.to_s.length > 48
        invalid_properties.push('invalid value for "remitter_name", the character length must be smaller than or equal to 48.')
      end

      if !@remitter_name.nil? && @remitter_name.to_s.length < 1
        invalid_properties.push('invalid value for "remitter_name", the character length must be great than or equal to 1.')
      end

      if @transfer_designated_date.nil?
        invalid_properties.push('invalid value for "transfer_designated_date", transfer_designated_date cannot be nil.')
      end

      if @transfer_designated_date.to_s.length > 10
        invalid_properties.push('invalid value for "transfer_designated_date", the character length must be smaller than or equal to 10.')
      end

      if @transfer_designated_date.to_s.length < 10
        invalid_properties.push('invalid value for "transfer_designated_date", the character length must be great than or equal to 10.')
      end

      if !@transfer_date_holiday_code.nil? && @transfer_date_holiday_code.to_s.length > 1
        invalid_properties.push('invalid value for "transfer_date_holiday_code", the character length must be smaller than or equal to 1.')
      end

      if !@transfer_date_holiday_code.nil? && @transfer_date_holiday_code.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_date_holiday_code", the character length must be great than or equal to 1.')
      end

      if !@total_count.nil? && @total_count.to_s.length > 6
        invalid_properties.push('invalid value for "total_count", the character length must be smaller than or equal to 6.')
      end

      if !@total_count.nil? && @total_count.to_s.length < 1
        invalid_properties.push('invalid value for "total_count", the character length must be great than or equal to 1.')
      end

      if !@total_amount.nil? && @total_amount.to_s.length > 20
        invalid_properties.push('invalid value for "total_amount", the character length must be smaller than or equal to 20.')
      end

      if !@total_amount.nil? && @total_amount.to_s.length < 1
        invalid_properties.push('invalid value for "total_amount", the character length must be great than or equal to 1.')
      end

      if !@apply_comment.nil? && @apply_comment.to_s.length > 20
        invalid_properties.push('invalid value for "apply_comment", the character length must be smaller than or equal to 20.')
      end

      if !@apply_comment.nil? && @apply_comment.to_s.length < 1
        invalid_properties.push('invalid value for "apply_comment", the character length must be great than or equal to 1.')
      end

      if @transfers.nil?
        invalid_properties.push('invalid value for "transfers", transfers cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 29
      return false if @account_id.to_s.length < 12
      return false if !@remitter_name.nil? && @remitter_name.to_s.length > 48
      return false if !@remitter_name.nil? && @remitter_name.to_s.length < 1
      return false if @transfer_designated_date.nil?
      return false if @transfer_designated_date.to_s.length > 10
      return false if @transfer_designated_date.to_s.length < 10
      return false if !@transfer_date_holiday_code.nil? && @transfer_date_holiday_code.to_s.length > 1
      return false if !@transfer_date_holiday_code.nil? && @transfer_date_holiday_code.to_s.length < 1
      return false if !@total_count.nil? && @total_count.to_s.length > 6
      return false if !@total_count.nil? && @total_count.to_s.length < 1
      return false if !@total_amount.nil? && @total_amount.to_s.length > 20
      return false if !@total_amount.nil? && @total_amount.to_s.length < 1
      return false if !@apply_comment.nil? && @apply_comment.to_s.length > 20
      return false if !@apply_comment.nil? && @apply_comment.to_s.length < 1
      return false if @transfers.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_id Value to be assigned
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'account_id cannot be nil'
      end

      if account_id.to_s.length > 29
        fail ArgumentError, 'invalid value for "account_id", the character length must be smaller than or equal to 29.'
      end

      if account_id.to_s.length < 12
        fail ArgumentError, 'invalid value for "account_id", the character length must be great than or equal to 12.'
      end

      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param [Object] remitter_name Value to be assigned
    def remitter_name=(remitter_name)
      if !remitter_name.nil? && remitter_name.to_s.length > 48
        fail ArgumentError, 'invalid value for "remitter_name", the character length must be smaller than or equal to 48.'
      end

      if !remitter_name.nil? && remitter_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "remitter_name", the character length must be great than or equal to 1.'
      end

      @remitter_name = remitter_name
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_designated_date Value to be assigned
    def transfer_designated_date=(transfer_designated_date)
      if transfer_designated_date.nil?
        fail ArgumentError, 'transfer_designated_date cannot be nil'
      end

      if transfer_designated_date.to_s.length > 10
        fail ArgumentError, 'invalid value for "transfer_designated_date", the character length must be smaller than or equal to 10.'
      end

      if transfer_designated_date.to_s.length < 10
        fail ArgumentError, 'invalid value for "transfer_designated_date", the character length must be great than or equal to 10.'
      end

      @transfer_designated_date = transfer_designated_date
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_date_holiday_code Value to be assigned
    def transfer_date_holiday_code=(transfer_date_holiday_code)
      if !transfer_date_holiday_code.nil? && transfer_date_holiday_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "transfer_date_holiday_code", the character length must be smaller than or equal to 1.'
      end

      if !transfer_date_holiday_code.nil? && transfer_date_holiday_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_date_holiday_code", the character length must be great than or equal to 1.'
      end

      @transfer_date_holiday_code = transfer_date_holiday_code
    end

    # Custom attribute writer method with validation
    # @param [Object] total_count Value to be assigned
    def total_count=(total_count)
      if !total_count.nil? && total_count.to_s.length > 6
        fail ArgumentError, 'invalid value for "total_count", the character length must be smaller than or equal to 6.'
      end

      if !total_count.nil? && total_count.to_s.length < 1
        fail ArgumentError, 'invalid value for "total_count", the character length must be great than or equal to 1.'
      end

      @total_count = total_count
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      if !total_amount.nil? && total_amount.to_s.length > 20
        fail ArgumentError, 'invalid value for "total_amount", the character length must be smaller than or equal to 20.'
      end

      if !total_amount.nil? && total_amount.to_s.length < 1
        fail ArgumentError, 'invalid value for "total_amount", the character length must be great than or equal to 1.'
      end

      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] apply_comment Value to be assigned
    def apply_comment=(apply_comment)
      if !apply_comment.nil? && apply_comment.to_s.length > 20
        fail ArgumentError, 'invalid value for "apply_comment", the character length must be smaller than or equal to 20.'
      end

      if !apply_comment.nil? && apply_comment.to_s.length < 1
        fail ArgumentError, 'invalid value for "apply_comment", the character length must be great than or equal to 1.'
      end

      @apply_comment = apply_comment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          remitter_name == o.remitter_name &&
          transfer_designated_date == o.transfer_designated_date &&
          transfer_date_holiday_code == o.transfer_date_holiday_code &&
          total_count == o.total_count &&
          total_amount == o.total_amount &&
          apply_comment == o.apply_comment &&
          transfers == o.transfers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, remitter_name, transfer_designated_date, transfer_date_holiday_code, total_count, total_amount, apply_comment, transfers].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
