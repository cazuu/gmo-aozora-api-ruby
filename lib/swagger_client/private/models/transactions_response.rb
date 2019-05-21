=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/personal/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/personal/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SwaggerClient
  class TransactionsResponse
    # 口座ID 半角英数字 口座を識別するID 
    attr_accessor :account_id

    # 通貨コード 半角文字 ISO4217に準拠した通貨コード 
    attr_accessor :currency_code

    # 通貨名 全角文字 ISO4217に準拠した通貨コードの当行での名称 
    attr_accessor :currency_name

    # 対象期間From 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます 
    attr_accessor :date_from

    # 対象期間To 半角文字 YYYY-MM-DD形式 リクエストに対象期間From、Toが設定されていない場合は当日日付が設定されます 
    attr_accessor :date_to

    # 基準日 入出金明細を照会した基準日を示します YYYY-MM-DD形式 
    attr_accessor :base_date

    # 基準時刻 入出金明細を照会した基準時刻を示します HH:MM:SS+09:00形式 
    attr_accessor :base_time

    # 次明細フラグ ・true=次明細あり ・false=次明細なし 
    attr_accessor :has_next

    # 次明細キー 半角数字 次明細フラグがfalseの場合は、項目自体を設定しません 
    attr_accessor :next_item_key

    # 明細取得件数 半角数字 
    attr_accessor :count

    # 入出金明細情報リスト 該当する情報が無い場合は、空のリストを返却します 
    attr_accessor :transactions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'currency_code' => :'currencyCode',
        :'currency_name' => :'currencyName',
        :'date_from' => :'dateFrom',
        :'date_to' => :'dateTo',
        :'base_date' => :'baseDate',
        :'base_time' => :'baseTime',
        :'has_next' => :'hasNext',
        :'next_item_key' => :'nextItemKey',
        :'count' => :'count',
        :'transactions' => :'transactions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'currency_code' => :'String',
        :'currency_name' => :'String',
        :'date_from' => :'String',
        :'date_to' => :'String',
        :'base_date' => :'String',
        :'base_time' => :'String',
        :'has_next' => :'BOOLEAN',
        :'next_item_key' => :'String',
        :'count' => :'String',
        :'transactions' => :'Array<Transaction>'
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

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currencyName')
        self.currency_name = attributes[:'currencyName']
      end

      if attributes.has_key?(:'dateFrom')
        self.date_from = attributes[:'dateFrom']
      end

      if attributes.has_key?(:'dateTo')
        self.date_to = attributes[:'dateTo']
      end

      if attributes.has_key?(:'baseDate')
        self.base_date = attributes[:'baseDate']
      end

      if attributes.has_key?(:'baseTime')
        self.base_time = attributes[:'baseTime']
      end

      if attributes.has_key?(:'hasNext')
        self.has_next = attributes[:'hasNext']
      end

      if attributes.has_key?(:'nextItemKey')
        self.next_item_key = attributes[:'nextItemKey']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
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

      if @currency_code.nil?
        invalid_properties.push('invalid value for "currency_code", currency_code cannot be nil.')
      end

      if @currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "currency_code", the character length must be smaller than or equal to 3.')
      end

      if @currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "currency_code", the character length must be great than or equal to 3.')
      end

      if @currency_name.nil?
        invalid_properties.push('invalid value for "currency_name", currency_name cannot be nil.')
      end

      if @currency_name.to_s.length > 10
        invalid_properties.push('invalid value for "currency_name", the character length must be smaller than or equal to 10.')
      end

      if @currency_name.to_s.length < 1
        invalid_properties.push('invalid value for "currency_name", the character length must be great than or equal to 1.')
      end

      if @date_from.nil?
        invalid_properties.push('invalid value for "date_from", date_from cannot be nil.')
      end

      if @date_from.to_s.length > 10
        invalid_properties.push('invalid value for "date_from", the character length must be smaller than or equal to 10.')
      end

      if @date_from.to_s.length < 10
        invalid_properties.push('invalid value for "date_from", the character length must be great than or equal to 10.')
      end

      if @date_to.nil?
        invalid_properties.push('invalid value for "date_to", date_to cannot be nil.')
      end

      if @date_to.to_s.length > 10
        invalid_properties.push('invalid value for "date_to", the character length must be smaller than or equal to 10.')
      end

      if @date_to.to_s.length < 10
        invalid_properties.push('invalid value for "date_to", the character length must be great than or equal to 10.')
      end

      if @base_date.nil?
        invalid_properties.push('invalid value for "base_date", base_date cannot be nil.')
      end

      if @base_date.to_s.length > 10
        invalid_properties.push('invalid value for "base_date", the character length must be smaller than or equal to 10.')
      end

      if @base_date.to_s.length < 10
        invalid_properties.push('invalid value for "base_date", the character length must be great than or equal to 10.')
      end

      if @base_time.nil?
        invalid_properties.push('invalid value for "base_time", base_time cannot be nil.')
      end

      if @base_time.to_s.length > 14
        invalid_properties.push('invalid value for "base_time", the character length must be smaller than or equal to 14.')
      end

      if @base_time.to_s.length < 14
        invalid_properties.push('invalid value for "base_time", the character length must be great than or equal to 14.')
      end

      if @has_next.nil?
        invalid_properties.push('invalid value for "has_next", has_next cannot be nil.')
      end

      if !@next_item_key.nil? && @next_item_key.to_s.length > 24
        invalid_properties.push('invalid value for "next_item_key", the character length must be smaller than or equal to 24.')
      end

      if !@next_item_key.nil? && @next_item_key.to_s.length < 1
        invalid_properties.push('invalid value for "next_item_key", the character length must be great than or equal to 1.')
      end

      if @count.nil?
        invalid_properties.push('invalid value for "count", count cannot be nil.')
      end

      if @count.to_s.length > 7
        invalid_properties.push('invalid value for "count", the character length must be smaller than or equal to 7.')
      end

      if @count.to_s.length < 1
        invalid_properties.push('invalid value for "count", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if @account_id.to_s.length > 29
      return false if @account_id.to_s.length < 12
      return false if @currency_code.nil?
      return false if @currency_code.to_s.length > 3
      return false if @currency_code.to_s.length < 3
      return false if @currency_name.nil?
      return false if @currency_name.to_s.length > 10
      return false if @currency_name.to_s.length < 1
      return false if @date_from.nil?
      return false if @date_from.to_s.length > 10
      return false if @date_from.to_s.length < 10
      return false if @date_to.nil?
      return false if @date_to.to_s.length > 10
      return false if @date_to.to_s.length < 10
      return false if @base_date.nil?
      return false if @base_date.to_s.length > 10
      return false if @base_date.to_s.length < 10
      return false if @base_time.nil?
      return false if @base_time.to_s.length > 14
      return false if @base_time.to_s.length < 14
      return false if @has_next.nil?
      return false if !@next_item_key.nil? && @next_item_key.to_s.length > 24
      return false if !@next_item_key.nil? && @next_item_key.to_s.length < 1
      return false if @count.nil?
      return false if @count.to_s.length > 7
      return false if @count.to_s.length < 1
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
    # @param [Object] currency_code Value to be assigned
    def currency_code=(currency_code)
      if currency_code.nil?
        fail ArgumentError, 'currency_code cannot be nil'
      end

      if currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be smaller than or equal to 3.'
      end

      if currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency_code", the character length must be great than or equal to 3.'
      end

      @currency_code = currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] currency_name Value to be assigned
    def currency_name=(currency_name)
      if currency_name.nil?
        fail ArgumentError, 'currency_name cannot be nil'
      end

      if currency_name.to_s.length > 10
        fail ArgumentError, 'invalid value for "currency_name", the character length must be smaller than or equal to 10.'
      end

      if currency_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "currency_name", the character length must be great than or equal to 1.'
      end

      @currency_name = currency_name
    end

    # Custom attribute writer method with validation
    # @param [Object] date_from Value to be assigned
    def date_from=(date_from)
      if date_from.nil?
        fail ArgumentError, 'date_from cannot be nil'
      end

      if date_from.to_s.length > 10
        fail ArgumentError, 'invalid value for "date_from", the character length must be smaller than or equal to 10.'
      end

      if date_from.to_s.length < 10
        fail ArgumentError, 'invalid value for "date_from", the character length must be great than or equal to 10.'
      end

      @date_from = date_from
    end

    # Custom attribute writer method with validation
    # @param [Object] date_to Value to be assigned
    def date_to=(date_to)
      if date_to.nil?
        fail ArgumentError, 'date_to cannot be nil'
      end

      if date_to.to_s.length > 10
        fail ArgumentError, 'invalid value for "date_to", the character length must be smaller than or equal to 10.'
      end

      if date_to.to_s.length < 10
        fail ArgumentError, 'invalid value for "date_to", the character length must be great than or equal to 10.'
      end

      @date_to = date_to
    end

    # Custom attribute writer method with validation
    # @param [Object] base_date Value to be assigned
    def base_date=(base_date)
      if base_date.nil?
        fail ArgumentError, 'base_date cannot be nil'
      end

      if base_date.to_s.length > 10
        fail ArgumentError, 'invalid value for "base_date", the character length must be smaller than or equal to 10.'
      end

      if base_date.to_s.length < 10
        fail ArgumentError, 'invalid value for "base_date", the character length must be great than or equal to 10.'
      end

      @base_date = base_date
    end

    # Custom attribute writer method with validation
    # @param [Object] base_time Value to be assigned
    def base_time=(base_time)
      if base_time.nil?
        fail ArgumentError, 'base_time cannot be nil'
      end

      if base_time.to_s.length > 14
        fail ArgumentError, 'invalid value for "base_time", the character length must be smaller than or equal to 14.'
      end

      if base_time.to_s.length < 14
        fail ArgumentError, 'invalid value for "base_time", the character length must be great than or equal to 14.'
      end

      @base_time = base_time
    end

    # Custom attribute writer method with validation
    # @param [Object] next_item_key Value to be assigned
    def next_item_key=(next_item_key)
      if !next_item_key.nil? && next_item_key.to_s.length > 24
        fail ArgumentError, 'invalid value for "next_item_key", the character length must be smaller than or equal to 24.'
      end

      if !next_item_key.nil? && next_item_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "next_item_key", the character length must be great than or equal to 1.'
      end

      @next_item_key = next_item_key
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if count.nil?
        fail ArgumentError, 'count cannot be nil'
      end

      if count.to_s.length > 7
        fail ArgumentError, 'invalid value for "count", the character length must be smaller than or equal to 7.'
      end

      if count.to_s.length < 1
        fail ArgumentError, 'invalid value for "count", the character length must be great than or equal to 1.'
      end

      @count = count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          currency_code == o.currency_code &&
          currency_name == o.currency_name &&
          date_from == o.date_from &&
          date_to == o.date_to &&
          base_date == o.base_date &&
          base_time == o.base_time &&
          has_next == o.has_next &&
          next_item_key == o.next_item_key &&
          count == o.count &&
          transactions == o.transactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, currency_code, currency_name, date_from, date_to, base_date, base_time, has_next, next_item_key, count, transactions].hash
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
