=begin
#GMO Aozora Net Bank Open API

#<p>オープンAPI仕様書（PDF版）は下記リンクをご参照ください</p> <div>   <div style='display:inline-block;'><a style='text-decoration:none; font-weight:bold; color:#00b8d4;' href='https://gmo-aozora.com/business/service/api-specification.html' target='_blank'>オープンAPI仕様書</a></div><div style='display:inline-block; margin-left:2px; left:2px; width:10px; height:10px; border-top:2px solid #00b8d4; border-right:2px solid #00b8d4; transparent;-webkit-transform:rotate(45deg); transform: rotate(45deg);'></div> </div> <h4 style='margin-top:30px; border-left: solid 4px #1B2F48; padding: 0.1em 0.5em; color:#1B2F48;'>共通仕様</h4> <div style='width:100%; margin:10px;'>   <p style='font-weight:bold; color:#616161;'>＜HTTPリクエストヘッダ＞</p>   <div style='display:table; margin-left:10px; background-color:#29659b;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff;'>項目</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; color:#fff;'>仕様</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>プロトコル</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>HTTP1.1/HTTPS</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>charset</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>UTF-8</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>content-type</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>application/json</div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>domain_name</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       本番環境：api.gmo-aozora.com</br>       開発環境：stg-api.gmo-aozora.com     </div>   </div>   <div style='display:table; margin-left:10px;'>     <div style='display:table-cell; min-width:130px; padding:9px; border:1px solid #fff; color:#fff; background-color:#29659b;'>メインURL</div>     <div style='display:table-cell; width:85%; padding:9px; border:1px solid #fff; background-color:#f8f8f8;'>       https://{domain_name}/ganb/api/corporation/{version}</br>       <span style='border-bottom:solid 1px;'>Version:1.x.x</span> の場合</br>       　https://api.gmo-aozora.com/ganb/api/corporation/<span style='border-bottom:solid 1px;'>v1</span>     </div>   </div> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜リクエスト共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <p style='padding-left:40px;'>パラメータの値が空の場合、またはパラメータ自体が設定されていない場合、どちらもNULLとして扱います</p> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜レスポンス共通仕様＞</p>   <p style='padding-left:20px; font-weight:bold; color:#616161;'>NULLデータの扱い</p>   <ul>     <li>レスポンスデータ</li>       <ul>         <li style='list-style-type:none;'>レスポンスデータの値が空の場合または、レスポンスデータ自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>     <li>配列</li>       <ul>         <li style='list-style-type:none;'>配列の要素の値が空の場合は「空のリスト」と記載</li>         <li style='list-style-type:none;'>配列自体が設定されない場合は「項目自体を設定しません」と記載</li>       </ul>   </ul> </div> <div style='margin:20px 10px;'>   <p style='font-weight:bold; color:#616161;'>＜更新系APIに関する注意事項＞</p>   <ul>     <li style='list-style-type:none;'>更新系処理がタイムアウトとなった場合、処理自体は実行されている可能性がありますので、</li>     <li style='list-style-type:none;'>再実行を行う必要がある場合は必ず照会系の処理で実行状況を確認してから再実行を行ってください</li>   </ul> </div> 

OpenAPI spec version: 1.1.12

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module SwaggerClient
  class BulkTransfer
    # 明細番号 半角数字 重複/0はエラー　1～9999とします 
    attr_accessor :item_id

    # 被仕向金融機関番号 半角数字 
    attr_accessor :beneficiary_bank_code

    # 被仕向金融機関名カナ 半角文字 参考値、処理に利用しません 
    attr_accessor :beneficiary_bank_name

    # 被仕向支店番号 半角数字 
    attr_accessor :beneficiary_branch_code

    # 被仕向支店名カナ 半角文字 参考値、処理に利用しません 
    attr_accessor :beneficiary_branch_name

    # 手形交換所番号 半角文字 入力する場合は、ALL０,ALLスペースであること 参考値、処理に利用しません 
    attr_accessor :clearing_house_name

    # 科目コード（預金種別コード） 半角数字 1：普通、2：当座、4：貯蓄、9：その他 
    attr_accessor :account_type_code

    # 口座番号 半角数字 7桁未満の番号は右詰で、前ゼロで埋めること 
    attr_accessor :account_number

    # 受取人名 半角文字 振込許容文字を指定可 ただし、一部の非許容文字は、許容文字に変換を行います 30文字目まで有効（31文字目以降は切り捨てます） 
    attr_accessor :beneficiary_name

    # 振込金額 半角数字 1以上9,999,999,999円以下　数値のみでカンマ、マイナス不可 
    attr_accessor :transfer_amount

    # 新規コード 半角文字 入力する場合は、数値またはスペースであること 参考値、処理に利用しません 
    attr_accessor :new_code

    # EDI情報 半角文字 振込許容文字を指定可 
    attr_accessor :edi_info

    # 振込指定区分 半角文字 入力する場合は、7：電信のみ　またはスペースであること 参考値、処理に利用しません（入力にかかわらず、すべて7：電信扱いとなります） 
    attr_accessor :transfer_designated_type

    # 識別表示 半角文字 本項目が「Y」であればEDI情報は振込先に通知、または省略/NULL/スペースであれば振込先には通知しません 
    attr_accessor :identification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_id' => :'itemId',
        :'beneficiary_bank_code' => :'beneficiaryBankCode',
        :'beneficiary_bank_name' => :'beneficiaryBankName',
        :'beneficiary_branch_code' => :'beneficiaryBranchCode',
        :'beneficiary_branch_name' => :'beneficiaryBranchName',
        :'clearing_house_name' => :'clearingHouseName',
        :'account_type_code' => :'accountTypeCode',
        :'account_number' => :'accountNumber',
        :'beneficiary_name' => :'beneficiaryName',
        :'transfer_amount' => :'transferAmount',
        :'new_code' => :'newCode',
        :'edi_info' => :'ediInfo',
        :'transfer_designated_type' => :'transferDesignatedType',
        :'identification' => :'identification'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'item_id' => :'String',
        :'beneficiary_bank_code' => :'String',
        :'beneficiary_bank_name' => :'String',
        :'beneficiary_branch_code' => :'String',
        :'beneficiary_branch_name' => :'String',
        :'clearing_house_name' => :'String',
        :'account_type_code' => :'String',
        :'account_number' => :'String',
        :'beneficiary_name' => :'String',
        :'transfer_amount' => :'String',
        :'new_code' => :'String',
        :'edi_info' => :'String',
        :'transfer_designated_type' => :'String',
        :'identification' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'itemId')
        self.item_id = attributes[:'itemId']
      end

      if attributes.has_key?(:'beneficiaryBankCode')
        self.beneficiary_bank_code = attributes[:'beneficiaryBankCode']
      end

      if attributes.has_key?(:'beneficiaryBankName')
        self.beneficiary_bank_name = attributes[:'beneficiaryBankName']
      end

      if attributes.has_key?(:'beneficiaryBranchCode')
        self.beneficiary_branch_code = attributes[:'beneficiaryBranchCode']
      end

      if attributes.has_key?(:'beneficiaryBranchName')
        self.beneficiary_branch_name = attributes[:'beneficiaryBranchName']
      end

      if attributes.has_key?(:'clearingHouseName')
        self.clearing_house_name = attributes[:'clearingHouseName']
      end

      if attributes.has_key?(:'accountTypeCode')
        self.account_type_code = attributes[:'accountTypeCode']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'beneficiaryName')
        self.beneficiary_name = attributes[:'beneficiaryName']
      end

      if attributes.has_key?(:'transferAmount')
        self.transfer_amount = attributes[:'transferAmount']
      end

      if attributes.has_key?(:'newCode')
        self.new_code = attributes[:'newCode']
      end

      if attributes.has_key?(:'ediInfo')
        self.edi_info = attributes[:'ediInfo']
      end

      if attributes.has_key?(:'transferDesignatedType')
        self.transfer_designated_type = attributes[:'transferDesignatedType']
      end

      if attributes.has_key?(:'identification')
        self.identification = attributes[:'identification']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @item_id.nil?
        invalid_properties.push('invalid value for "item_id", item_id cannot be nil.')
      end

      if @item_id.to_s.length > 6
        invalid_properties.push('invalid value for "item_id", the character length must be smaller than or equal to 6.')
      end

      if @item_id.to_s.length < 1
        invalid_properties.push('invalid value for "item_id", the character length must be great than or equal to 1.')
      end

      if @beneficiary_bank_code.nil?
        invalid_properties.push('invalid value for "beneficiary_bank_code", beneficiary_bank_code cannot be nil.')
      end

      if @beneficiary_bank_code.to_s.length > 4
        invalid_properties.push('invalid value for "beneficiary_bank_code", the character length must be smaller than or equal to 4.')
      end

      if @beneficiary_bank_code.to_s.length < 4
        invalid_properties.push('invalid value for "beneficiary_bank_code", the character length must be great than or equal to 4.')
      end

      if !@beneficiary_bank_name.nil? && @beneficiary_bank_name.to_s.length > 30
        invalid_properties.push('invalid value for "beneficiary_bank_name", the character length must be smaller than or equal to 30.')
      end

      if !@beneficiary_bank_name.nil? && @beneficiary_bank_name.to_s.length < 1
        invalid_properties.push('invalid value for "beneficiary_bank_name", the character length must be great than or equal to 1.')
      end

      if @beneficiary_branch_code.nil?
        invalid_properties.push('invalid value for "beneficiary_branch_code", beneficiary_branch_code cannot be nil.')
      end

      if @beneficiary_branch_code.to_s.length > 3
        invalid_properties.push('invalid value for "beneficiary_branch_code", the character length must be smaller than or equal to 3.')
      end

      if @beneficiary_branch_code.to_s.length < 3
        invalid_properties.push('invalid value for "beneficiary_branch_code", the character length must be great than or equal to 3.')
      end

      if !@beneficiary_branch_name.nil? && @beneficiary_branch_name.to_s.length > 15
        invalid_properties.push('invalid value for "beneficiary_branch_name", the character length must be smaller than or equal to 15.')
      end

      if !@beneficiary_branch_name.nil? && @beneficiary_branch_name.to_s.length < 1
        invalid_properties.push('invalid value for "beneficiary_branch_name", the character length must be great than or equal to 1.')
      end

      if !@clearing_house_name.nil? && @clearing_house_name.to_s.length > 4
        invalid_properties.push('invalid value for "clearing_house_name", the character length must be smaller than or equal to 4.')
      end

      if !@clearing_house_name.nil? && @clearing_house_name.to_s.length < 4
        invalid_properties.push('invalid value for "clearing_house_name", the character length must be great than or equal to 4.')
      end

      if @account_type_code.nil?
        invalid_properties.push('invalid value for "account_type_code", account_type_code cannot be nil.')
      end

      if @account_type_code.to_s.length > 1
        invalid_properties.push('invalid value for "account_type_code", the character length must be smaller than or equal to 1.')
      end

      if @account_type_code.to_s.length < 1
        invalid_properties.push('invalid value for "account_type_code", the character length must be great than or equal to 1.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @account_number.to_s.length > 7
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 7.')
      end

      if @account_number.to_s.length < 7
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 7.')
      end

      if @beneficiary_name.nil?
        invalid_properties.push('invalid value for "beneficiary_name", beneficiary_name cannot be nil.')
      end

      if @beneficiary_name.to_s.length > 48
        invalid_properties.push('invalid value for "beneficiary_name", the character length must be smaller than or equal to 48.')
      end

      if @beneficiary_name.to_s.length < 1
        invalid_properties.push('invalid value for "beneficiary_name", the character length must be great than or equal to 1.')
      end

      if @transfer_amount.nil?
        invalid_properties.push('invalid value for "transfer_amount", transfer_amount cannot be nil.')
      end

      if @transfer_amount.to_s.length > 20
        invalid_properties.push('invalid value for "transfer_amount", the character length must be smaller than or equal to 20.')
      end

      if @transfer_amount.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_amount", the character length must be great than or equal to 1.')
      end

      if !@new_code.nil? && @new_code.to_s.length > 1
        invalid_properties.push('invalid value for "new_code", the character length must be smaller than or equal to 1.')
      end

      if !@new_code.nil? && @new_code.to_s.length < 1
        invalid_properties.push('invalid value for "new_code", the character length must be great than or equal to 1.')
      end

      if !@edi_info.nil? && @edi_info.to_s.length > 20
        invalid_properties.push('invalid value for "edi_info", the character length must be smaller than or equal to 20.')
      end

      if !@edi_info.nil? && @edi_info.to_s.length < 1
        invalid_properties.push('invalid value for "edi_info", the character length must be great than or equal to 1.')
      end

      if !@transfer_designated_type.nil? && @transfer_designated_type.to_s.length > 1
        invalid_properties.push('invalid value for "transfer_designated_type", the character length must be smaller than or equal to 1.')
      end

      if !@transfer_designated_type.nil? && @transfer_designated_type.to_s.length < 1
        invalid_properties.push('invalid value for "transfer_designated_type", the character length must be great than or equal to 1.')
      end

      if !@identification.nil? && @identification.to_s.length > 1
        invalid_properties.push('invalid value for "identification", the character length must be smaller than or equal to 1.')
      end

      if !@identification.nil? && @identification.to_s.length < 1
        invalid_properties.push('invalid value for "identification", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_id.nil?
      return false if @item_id.to_s.length > 6
      return false if @item_id.to_s.length < 1
      return false if @beneficiary_bank_code.nil?
      return false if @beneficiary_bank_code.to_s.length > 4
      return false if @beneficiary_bank_code.to_s.length < 4
      return false if !@beneficiary_bank_name.nil? && @beneficiary_bank_name.to_s.length > 30
      return false if !@beneficiary_bank_name.nil? && @beneficiary_bank_name.to_s.length < 1
      return false if @beneficiary_branch_code.nil?
      return false if @beneficiary_branch_code.to_s.length > 3
      return false if @beneficiary_branch_code.to_s.length < 3
      return false if !@beneficiary_branch_name.nil? && @beneficiary_branch_name.to_s.length > 15
      return false if !@beneficiary_branch_name.nil? && @beneficiary_branch_name.to_s.length < 1
      return false if !@clearing_house_name.nil? && @clearing_house_name.to_s.length > 4
      return false if !@clearing_house_name.nil? && @clearing_house_name.to_s.length < 4
      return false if @account_type_code.nil?
      return false if @account_type_code.to_s.length > 1
      return false if @account_type_code.to_s.length < 1
      return false if @account_number.nil?
      return false if @account_number.to_s.length > 7
      return false if @account_number.to_s.length < 7
      return false if @beneficiary_name.nil?
      return false if @beneficiary_name.to_s.length > 48
      return false if @beneficiary_name.to_s.length < 1
      return false if @transfer_amount.nil?
      return false if @transfer_amount.to_s.length > 20
      return false if @transfer_amount.to_s.length < 1
      return false if !@new_code.nil? && @new_code.to_s.length > 1
      return false if !@new_code.nil? && @new_code.to_s.length < 1
      return false if !@edi_info.nil? && @edi_info.to_s.length > 20
      return false if !@edi_info.nil? && @edi_info.to_s.length < 1
      return false if !@transfer_designated_type.nil? && @transfer_designated_type.to_s.length > 1
      return false if !@transfer_designated_type.nil? && @transfer_designated_type.to_s.length < 1
      return false if !@identification.nil? && @identification.to_s.length > 1
      return false if !@identification.nil? && @identification.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] item_id Value to be assigned
    def item_id=(item_id)
      if item_id.nil?
        fail ArgumentError, 'item_id cannot be nil'
      end

      if item_id.to_s.length > 6
        fail ArgumentError, 'invalid value for "item_id", the character length must be smaller than or equal to 6.'
      end

      if item_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "item_id", the character length must be great than or equal to 1.'
      end

      @item_id = item_id
    end

    # Custom attribute writer method with validation
    # @param [Object] beneficiary_bank_code Value to be assigned
    def beneficiary_bank_code=(beneficiary_bank_code)
      if beneficiary_bank_code.nil?
        fail ArgumentError, 'beneficiary_bank_code cannot be nil'
      end

      if beneficiary_bank_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "beneficiary_bank_code", the character length must be smaller than or equal to 4.'
      end

      if beneficiary_bank_code.to_s.length < 4
        fail ArgumentError, 'invalid value for "beneficiary_bank_code", the character length must be great than or equal to 4.'
      end

      @beneficiary_bank_code = beneficiary_bank_code
    end

    # Custom attribute writer method with validation
    # @param [Object] beneficiary_bank_name Value to be assigned
    def beneficiary_bank_name=(beneficiary_bank_name)
      if !beneficiary_bank_name.nil? && beneficiary_bank_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "beneficiary_bank_name", the character length must be smaller than or equal to 30.'
      end

      if !beneficiary_bank_name.nil? && beneficiary_bank_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "beneficiary_bank_name", the character length must be great than or equal to 1.'
      end

      @beneficiary_bank_name = beneficiary_bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] beneficiary_branch_code Value to be assigned
    def beneficiary_branch_code=(beneficiary_branch_code)
      if beneficiary_branch_code.nil?
        fail ArgumentError, 'beneficiary_branch_code cannot be nil'
      end

      if beneficiary_branch_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "beneficiary_branch_code", the character length must be smaller than or equal to 3.'
      end

      if beneficiary_branch_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "beneficiary_branch_code", the character length must be great than or equal to 3.'
      end

      @beneficiary_branch_code = beneficiary_branch_code
    end

    # Custom attribute writer method with validation
    # @param [Object] beneficiary_branch_name Value to be assigned
    def beneficiary_branch_name=(beneficiary_branch_name)
      if !beneficiary_branch_name.nil? && beneficiary_branch_name.to_s.length > 15
        fail ArgumentError, 'invalid value for "beneficiary_branch_name", the character length must be smaller than or equal to 15.'
      end

      if !beneficiary_branch_name.nil? && beneficiary_branch_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "beneficiary_branch_name", the character length must be great than or equal to 1.'
      end

      @beneficiary_branch_name = beneficiary_branch_name
    end

    # Custom attribute writer method with validation
    # @param [Object] clearing_house_name Value to be assigned
    def clearing_house_name=(clearing_house_name)
      if !clearing_house_name.nil? && clearing_house_name.to_s.length > 4
        fail ArgumentError, 'invalid value for "clearing_house_name", the character length must be smaller than or equal to 4.'
      end

      if !clearing_house_name.nil? && clearing_house_name.to_s.length < 4
        fail ArgumentError, 'invalid value for "clearing_house_name", the character length must be great than or equal to 4.'
      end

      @clearing_house_name = clearing_house_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type_code Value to be assigned
    def account_type_code=(account_type_code)
      if account_type_code.nil?
        fail ArgumentError, 'account_type_code cannot be nil'
      end

      if account_type_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "account_type_code", the character length must be smaller than or equal to 1.'
      end

      if account_type_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_type_code", the character length must be great than or equal to 1.'
      end

      @account_type_code = account_type_code
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length > 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 7.'
      end

      if account_number.to_s.length < 7
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 7.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] beneficiary_name Value to be assigned
    def beneficiary_name=(beneficiary_name)
      if beneficiary_name.nil?
        fail ArgumentError, 'beneficiary_name cannot be nil'
      end

      if beneficiary_name.to_s.length > 48
        fail ArgumentError, 'invalid value for "beneficiary_name", the character length must be smaller than or equal to 48.'
      end

      if beneficiary_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "beneficiary_name", the character length must be great than or equal to 1.'
      end

      @beneficiary_name = beneficiary_name
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_amount Value to be assigned
    def transfer_amount=(transfer_amount)
      if transfer_amount.nil?
        fail ArgumentError, 'transfer_amount cannot be nil'
      end

      if transfer_amount.to_s.length > 20
        fail ArgumentError, 'invalid value for "transfer_amount", the character length must be smaller than or equal to 20.'
      end

      if transfer_amount.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_amount", the character length must be great than or equal to 1.'
      end

      @transfer_amount = transfer_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] new_code Value to be assigned
    def new_code=(new_code)
      if !new_code.nil? && new_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "new_code", the character length must be smaller than or equal to 1.'
      end

      if !new_code.nil? && new_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "new_code", the character length must be great than or equal to 1.'
      end

      @new_code = new_code
    end

    # Custom attribute writer method with validation
    # @param [Object] edi_info Value to be assigned
    def edi_info=(edi_info)
      if !edi_info.nil? && edi_info.to_s.length > 20
        fail ArgumentError, 'invalid value for "edi_info", the character length must be smaller than or equal to 20.'
      end

      if !edi_info.nil? && edi_info.to_s.length < 1
        fail ArgumentError, 'invalid value for "edi_info", the character length must be great than or equal to 1.'
      end

      @edi_info = edi_info
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_designated_type Value to be assigned
    def transfer_designated_type=(transfer_designated_type)
      if !transfer_designated_type.nil? && transfer_designated_type.to_s.length > 1
        fail ArgumentError, 'invalid value for "transfer_designated_type", the character length must be smaller than or equal to 1.'
      end

      if !transfer_designated_type.nil? && transfer_designated_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "transfer_designated_type", the character length must be great than or equal to 1.'
      end

      @transfer_designated_type = transfer_designated_type
    end

    # Custom attribute writer method with validation
    # @param [Object] identification Value to be assigned
    def identification=(identification)
      if !identification.nil? && identification.to_s.length > 1
        fail ArgumentError, 'invalid value for "identification", the character length must be smaller than or equal to 1.'
      end

      if !identification.nil? && identification.to_s.length < 1
        fail ArgumentError, 'invalid value for "identification", the character length must be great than or equal to 1.'
      end

      @identification = identification
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_id == o.item_id &&
          beneficiary_bank_code == o.beneficiary_bank_code &&
          beneficiary_bank_name == o.beneficiary_bank_name &&
          beneficiary_branch_code == o.beneficiary_branch_code &&
          beneficiary_branch_name == o.beneficiary_branch_name &&
          clearing_house_name == o.clearing_house_name &&
          account_type_code == o.account_type_code &&
          account_number == o.account_number &&
          beneficiary_name == o.beneficiary_name &&
          transfer_amount == o.transfer_amount &&
          new_code == o.new_code &&
          edi_info == o.edi_info &&
          transfer_designated_type == o.transfer_designated_type &&
          identification == o.identification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [item_id, beneficiary_bank_code, beneficiary_bank_name, beneficiary_branch_code, beneficiary_branch_name, clearing_house_name, account_type_code, account_number, beneficiary_name, transfer_amount, new_code, edi_info, transfer_designated_type, identification].hash
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
