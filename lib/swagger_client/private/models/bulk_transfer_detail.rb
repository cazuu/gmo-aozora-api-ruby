=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/personal/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/personal/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SwaggerClient
  class BulkTransferDetail
    # 振込ステータス 半角数字 2:申請中、3:差戻、4:取下げ、5:期限切れ、8:承認取消/予約取消、 11:予約中、12:手続中、13:リトライ中、 20:手続済、30:不能・組戻あり、40:手続不成立 
    attr_accessor :transfer_status

    # 振込ステータス名 全角文字 
    attr_accessor :transfer_status_name

    # 種類 全角文字 総合振込　を表示 
    attr_accessor :transfer_type_name

    # 会社コード(振込依頼人コード) 銀行側で番号を付与している場合のみ表示 該当する情報が無い場合は項目自体を設定しません 
    attr_accessor :remitter_code

    # 振込無料回数利用可否 振込利用回数の利用可否（無料回数の利用可否の設定であり、実際の利用有無ではありません） 総合振込では無料回数は利用できないため、常にfalse 
    attr_accessor :is_fee_free_use

    # ポイント利用可否 ポイント会社の利用可否 
    attr_accessor :is_fee_point_use

    # ポイント会社名 全角文字 
    attr_accessor :point_name

    # 手数料後払区分 「true=後払い」以外の場合は項目自体を設定しません 
    attr_accessor :fee_later_payment_flg

    # 合計手数料 半角数字 振り込み完了時以外は、予定の手数料 
    attr_accessor :total_fee

    # 合計出金金額 半角数字 手数料+振込金額　ただし、振込完了時以外は、予定の手数料 
    attr_accessor :total_debit_amount

    # 振込申請情報 振込申請情報のリスト 
    attr_accessor :transfer_applies

    # 振込受付情報 振込受付情報のリスト 該当する情報が無い場合は空のリストを返却 
    attr_accessor :transfer_accepts

    # 総合振込レスポンス情報 総合振込レスポンス情報のリスト 該当する情報が無い場合は空のリストを返却 
    attr_accessor :bulktransfer_responses

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transfer_status' => :'transferStatus',
        :'transfer_status_name' => :'transferStatusName',
        :'transfer_type_name' => :'transferTypeName',
        :'remitter_code' => :'remitterCode',
        :'is_fee_free_use' => :'isFeeFreeUse',
        :'is_fee_point_use' => :'isFeePointUse',
        :'point_name' => :'pointName',
        :'fee_later_payment_flg' => :'feeLaterPaymentFlg',
        :'total_fee' => :'totalFee',
        :'total_debit_amount' => :'totalDebitAmount',
        :'transfer_applies' => :'transferApplies',
        :'transfer_accepts' => :'transferAccepts',
        :'bulktransfer_responses' => :'bulktransferResponses'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transfer_status' => :'String',
        :'transfer_status_name' => :'String',
        :'transfer_type_name' => :'String',
        :'remitter_code' => :'String',
        :'is_fee_free_use' => :'BOOLEAN',
        :'is_fee_point_use' => :'BOOLEAN',
        :'point_name' => :'String',
        :'fee_later_payment_flg' => :'BOOLEAN',
        :'total_fee' => :'String',
        :'total_debit_amount' => :'String',
        :'transfer_applies' => :'Array<TransferApply>',
        :'transfer_accepts' => :'Array<TransferAccept>',
        :'bulktransfer_responses' => :'Array<BulkTransferResponse>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'transferStatus')
        self.transfer_status = attributes[:'transferStatus']
      end

      if attributes.has_key?(:'transferStatusName')
        self.transfer_status_name = attributes[:'transferStatusName']
      end

      if attributes.has_key?(:'transferTypeName')
        self.transfer_type_name = attributes[:'transferTypeName']
      end

      if attributes.has_key?(:'remitterCode')
        self.remitter_code = attributes[:'remitterCode']
      end

      if attributes.has_key?(:'isFeeFreeUse')
        self.is_fee_free_use = attributes[:'isFeeFreeUse']
      end

      if attributes.has_key?(:'isFeePointUse')
        self.is_fee_point_use = attributes[:'isFeePointUse']
      end

      if attributes.has_key?(:'pointName')
        self.point_name = attributes[:'pointName']
      end

      if attributes.has_key?(:'feeLaterPaymentFlg')
        self.fee_later_payment_flg = attributes[:'feeLaterPaymentFlg']
      end

      if attributes.has_key?(:'totalFee')
        self.total_fee = attributes[:'totalFee']
      end

      if attributes.has_key?(:'totalDebitAmount')
        self.total_debit_amount = attributes[:'totalDebitAmount']
      end

      if attributes.has_key?(:'transferApplies')
        if (value = attributes[:'transferApplies']).is_a?(Array)
          self.transfer_applies = value
        end
      end

      if attributes.has_key?(:'transferAccepts')
        if (value = attributes[:'transferAccepts']).is_a?(Array)
          self.transfer_accepts = value
        end
      end

      if attributes.has_key?(:'bulktransferResponses')
        if (value = attributes[:'bulktransferResponses']).is_a?(Array)
          self.bulktransfer_responses = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@transfer_status.nil? && @transfer_status.to_s.length > 3
        invalid_properties.push('invalid value for "transfer_status", the character length must be smaller than or equal to 3.')
      end

      if !@transfer_status.nil? && @transfer_status.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_status", the character length must be great than or equal to 1.')
      end

      if !@transfer_status_name.nil? && @transfer_status_name.to_s.length > 10
        invalid_properties.push('invalid value for "transfer_status_name", the character length must be smaller than or equal to 10.')
      end

      if !@transfer_status_name.nil? && @transfer_status_name.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_status_name", the character length must be great than or equal to 1.')
      end

      if !@transfer_type_name.nil? && @transfer_type_name.to_s.length > 6
        invalid_properties.push('invalid value for "transfer_type_name", the character length must be smaller than or equal to 6.')
      end

      if !@transfer_type_name.nil? && @transfer_type_name.to_s.length < 4
        invalid_properties.push('invalid value for "transfer_type_name", the character length must be great than or equal to 4.')
      end

      if !@remitter_code.nil? && @remitter_code.to_s.length > 10
        invalid_properties.push('invalid value for "remitter_code", the character length must be smaller than or equal to 10.')
      end

      if !@remitter_code.nil? && @remitter_code.to_s.length < 10
        invalid_properties.push('invalid value for "remitter_code", the character length must be great than or equal to 10.')
      end

      if !@point_name.nil? && @point_name.to_s.length > 32
        invalid_properties.push('invalid value for "point_name", the character length must be smaller than or equal to 32.')
      end

      if !@point_name.nil? && @point_name.to_s.length < 1
        invalid_properties.push('invalid value for "point_name", the character length must be great than or equal to 1.')
      end

      if !@total_fee.nil? && @total_fee.to_s.length > 20
        invalid_properties.push('invalid value for "total_fee", the character length must be smaller than or equal to 20.')
      end

      if !@total_fee.nil? && @total_fee.to_s.length < 1
        invalid_properties.push('invalid value for "total_fee", the character length must be great than or equal to 1.')
      end

      if !@total_debit_amount.nil? && @total_debit_amount.to_s.length > 20
        invalid_properties.push('invalid value for "total_debit_amount", the character length must be smaller than or equal to 20.')
      end

      if !@total_debit_amount.nil? && @total_debit_amount.to_s.length < 1
        invalid_properties.push('invalid value for "total_debit_amount", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@transfer_status.nil? && @transfer_status.to_s.length > 3
      return false if !@transfer_status.nil? && @transfer_status.to_s.length < 1
      return false if !@transfer_status_name.nil? && @transfer_status_name.to_s.length > 10
      return false if !@transfer_status_name.nil? && @transfer_status_name.to_s.length < 1
      return false if !@transfer_type_name.nil? && @transfer_type_name.to_s.length > 6
      return false if !@transfer_type_name.nil? && @transfer_type_name.to_s.length < 4
      return false if !@remitter_code.nil? && @remitter_code.to_s.length > 10
      return false if !@remitter_code.nil? && @remitter_code.to_s.length < 10
      return false if !@point_name.nil? && @point_name.to_s.length > 32
      return false if !@point_name.nil? && @point_name.to_s.length < 1
      return false if !@total_fee.nil? && @total_fee.to_s.length > 20
      return false if !@total_fee.nil? && @total_fee.to_s.length < 1
      return false if !@total_debit_amount.nil? && @total_debit_amount.to_s.length > 20
      return false if !@total_debit_amount.nil? && @total_debit_amount.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_status Value to be assigned
    def transfer_status=(transfer_status)
      if !transfer_status.nil? && transfer_status.to_s.length > 3
        fail ArgumentError, 'invalid value for "transfer_status", the character length must be smaller than or equal to 3.'
      end

      if !transfer_status.nil? && transfer_status.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_status", the character length must be great than or equal to 1.'
      end

      @transfer_status = transfer_status
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_status_name Value to be assigned
    def transfer_status_name=(transfer_status_name)
      if !transfer_status_name.nil? && transfer_status_name.to_s.length > 10
        fail ArgumentError, 'invalid value for "transfer_status_name", the character length must be smaller than or equal to 10.'
      end

      if !transfer_status_name.nil? && transfer_status_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_status_name", the character length must be great than or equal to 1.'
      end

      @transfer_status_name = transfer_status_name
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_type_name Value to be assigned
    def transfer_type_name=(transfer_type_name)
      if !transfer_type_name.nil? && transfer_type_name.to_s.length > 6
        fail ArgumentError, 'invalid value for "transfer_type_name", the character length must be smaller than or equal to 6.'
      end

      if !transfer_type_name.nil? && transfer_type_name.to_s.length < 4
        fail ArgumentError, 'invalid value for "transfer_type_name", the character length must be great than or equal to 4.'
      end

      @transfer_type_name = transfer_type_name
    end

    # Custom attribute writer method with validation
    # @param [Object] remitter_code Value to be assigned
    def remitter_code=(remitter_code)
      if !remitter_code.nil? && remitter_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "remitter_code", the character length must be smaller than or equal to 10.'
      end

      if !remitter_code.nil? && remitter_code.to_s.length < 10
        fail ArgumentError, 'invalid value for "remitter_code", the character length must be great than or equal to 10.'
      end

      @remitter_code = remitter_code
    end

    # Custom attribute writer method with validation
    # @param [Object] point_name Value to be assigned
    def point_name=(point_name)
      if !point_name.nil? && point_name.to_s.length > 32
        fail ArgumentError, 'invalid value for "point_name", the character length must be smaller than or equal to 32.'
      end

      if !point_name.nil? && point_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "point_name", the character length must be great than or equal to 1.'
      end

      @point_name = point_name
    end

    # Custom attribute writer method with validation
    # @param [Object] total_fee Value to be assigned
    def total_fee=(total_fee)
      if !total_fee.nil? && total_fee.to_s.length > 20
        fail ArgumentError, 'invalid value for "total_fee", the character length must be smaller than or equal to 20.'
      end

      if !total_fee.nil? && total_fee.to_s.length < 1
        fail ArgumentError, 'invalid value for "total_fee", the character length must be great than or equal to 1.'
      end

      @total_fee = total_fee
    end

    # Custom attribute writer method with validation
    # @param [Object] total_debit_amount Value to be assigned
    def total_debit_amount=(total_debit_amount)
      if !total_debit_amount.nil? && total_debit_amount.to_s.length > 20
        fail ArgumentError, 'invalid value for "total_debit_amount", the character length must be smaller than or equal to 20.'
      end

      if !total_debit_amount.nil? && total_debit_amount.to_s.length < 1
        fail ArgumentError, 'invalid value for "total_debit_amount", the character length must be great than or equal to 1.'
      end

      @total_debit_amount = total_debit_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transfer_status == o.transfer_status &&
          transfer_status_name == o.transfer_status_name &&
          transfer_type_name == o.transfer_type_name &&
          remitter_code == o.remitter_code &&
          is_fee_free_use == o.is_fee_free_use &&
          is_fee_point_use == o.is_fee_point_use &&
          point_name == o.point_name &&
          fee_later_payment_flg == o.fee_later_payment_flg &&
          total_fee == o.total_fee &&
          total_debit_amount == o.total_debit_amount &&
          transfer_applies == o.transfer_applies &&
          transfer_accepts == o.transfer_accepts &&
          bulktransfer_responses == o.bulktransfer_responses
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transfer_status, transfer_status_name, transfer_type_name, remitter_code, is_fee_free_use, is_fee_point_use, point_name, fee_later_payment_flg, total_fee, total_debit_amount, transfer_applies, transfer_accepts, bulktransfer_responses].hash
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
