# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' },])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Country.first.blank?
  Country.create([
  { name: 'AFGHANISTAN', code: 'AF', display: 0 },
  { name: 'ALAND ISLANDS', code: 'AX', display: 0 },
  { name: 'ALBANIA', code: 'AL', display: 0 },
  { name: 'ALGERIA', code: 'DZ', display: 0 },
  { name: 'AMERICAN SAMOA', code: 'AS', display: 0 },
  { name: 'ANDORRA', code: 'AD', display: 0 },
  { name: 'ANGOLA', code: 'AO', display: 0 },
  { name: 'ANGUILLA', code: 'AI', display: 0 },
  { name: 'ANTIGUA AND BARBUDA', code: 'AG', display: 0 },
  { name: 'ARGENTINA', code: 'AR', display: 0 },
  { name: 'ARMENIA', code: 'AM', display: 0 },
  { name: 'ARUBA', code: 'AW', display: 0 },
  { name: 'AUSTRALIA', code: 'AU', display: 0 },
  { name: 'AUSTRIA', code: 'AT', display: 0 },
  { name: 'AZERBAIJAN', code: 'AZ', display: 0 },
  { name: 'BAHAMAS', code: 'BS', display: 0 },
  { name: 'BAHRAIN', code: 'BH', display: 0 },
  { name: 'BANGLADESH', code: 'BD', display: 0 },
  { name: 'BARBADOS', code: 'BB', display: 0 },
  { name: 'BELARUS', code: 'BY', display: 0 },
  { name: 'BELGIUM', code: 'BE', display: 0 },
  { name: 'BELIZE', code: 'BZ', display: 0 },
  { name: 'BENIN', code: 'BJ', display: 0 },
  { name: 'BERMUDA', code: 'BM', display: 0 },
  { name: 'BHUTAN', code: 'BT', display: 0 },
  { name: 'BOLIVIA, PLURINATIONAL STATE OF', code: 'BO', display: 0 },
  { name: 'BONAIRE, SINT EUSTATIUS AND SABA', code: 'BQ', display: 0 },
  { name: 'BOSNIA AND HERZEGOVINA', code: 'BA', display: 0 },
  { name: 'BOTSWANA', code: 'BW', display: 0 },
  { name: 'BOUVET ISLAND', code: 'BV', display: 0 },
  { name: 'BRAZIL', code: 'BR', display: 0 },
  { name: 'BRITISH INDIAN OCEAN TERRITORY', code: 'IO', display: 0 },
  { name: 'BRUNEI DARUSSALAM', code: 'BN', display: 0 },
  { name: 'BULGARIA', code: 'BG', display: 0 },
  { name: 'BURKINA FASO', code: 'BF', display: 0 },
  { name: 'BURUNDI', code: 'BI', display: 0 },
  { name: 'CAMBODIA', code: 'KH', display: 0 },
  { name: 'CAMEROON', code: 'CM', display: 0 },
  { name: 'CANADA', code: 'CA', display: 0 },
  { name: 'CAPE VERDE', code: 'CV', display: 0 },
  { name: 'CAYMAN ISLANDS', code: 'KY', display: 0 },
  { name: 'CENTRAL AFRICAN REPUBLIC', code: 'CF', display: 0 },
  { name: 'CHAD', code: 'TD', display: 0 },
  { name: 'CHILE', code: 'CL', display: 0 },
  { name: 'CHINA', code: 'CN', display: 0 },
  { name: 'CHRISTMAS ISLAND', code: 'CX', display: 0 },
  { name: 'COCOS (KEELING) ISLANDS', code: 'CC', display: 0 },
  { name: 'COLOMBIA', code: 'CO', display: 0 },
  { name: 'COMOROS', code: 'KM', display: 0 },
  { name: 'CONGO', code: 'CG', display: 0 },
  { name: 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', code: 'CD', display: 0 },
  { name: 'COOK ISLANDS', code: 'CK', display: 0 },
  { name: 'COSTA RICA', code: 'CR', display: 0 },
  { name: 'COTE DIVOIRE', code: 'CI', display: 0 },
  { name: 'CROATIA', code: 'HR', display: 0 },
  { name: 'CUBA', code: 'CU', display: 0 },
  { name: 'CURACAO', code: 'CW', display: 0 },
  { name: 'CYPRUS', code: 'CY', display: 0 },
  { name: 'CZECH REPUBLIC', code: 'CZ', display: 0 },
  { name: 'DENMARK', code: 'DK', display: 0 },
  { name: 'DJIBOUTI', code: 'DJ', display: 0 },
  { name: 'DOMINICA', code: 'DM', display: 0 },
  { name: 'DOMINICAN REPUBLIC', code: 'DO', display: 0 },
  { name: 'ECUADOR', code: 'EC', display: 0 },
  { name: 'EGYPT', code: 'EG', display: 0 },
  { name: 'EL SALVADOR', code: 'SV', display: 0 },
  { name: 'EQUATORIAL GUINEA', code: 'GQ', display: 0 },
  { name: 'ERITREA', code: 'ER', display: 0 },
  { name: 'ESTONIA', code: 'EE', display: 0 },
  { name: 'ETHIOPIA', code: 'ET', display: 0 },
  { name: 'FALKLAND ISLANDS (MALVINAS)', code: 'FK', display: 0 },
  { name: 'FAROE ISLANDS', code: 'FO', display: 0 },
  { name: 'FIJI', code: 'FJ', display: 0 },
  { name: 'FINLAND', code: 'FI', display: 0 },
  { name: 'FRANCE', code: 'FR', display: 0 },
  { name: 'FRENCH GUIANA', code: 'GF', display: 0 },
  { name: 'FRENCH POLYNESIA', code: 'PF', display: 0 },
  { name: 'FRENCH SOUTHERN TERRITORIES', code: 'TF', display: 0 },
  { name: 'GABON', code: 'GA', display: 0 },
  { name: 'GAMBIA', code: 'GM', display: 0 },
  { name: 'GEORGIA', code: 'GE', display: 0 },
  { name: 'GERMANY', code: 'DE', display: 0 },
  { name: 'GHANA', code: 'GH', display: 0 },
  { name: 'GIBRALTAR', code: 'GI', display: 0 },
  { name: 'GREECE', code: 'GR', display: 0 },
  { name: 'GREENLAND', code: 'GL', display: 0 },
  { name: 'GRENADA', code: 'GD', display: 0 },
  { name: 'GUADELOUPE', code: 'GP', display: 0 },
  { name: 'GUAM', code: 'GU', display: 0 },
  { name: 'GUATEMALA', code: 'GT', display: 0 },
  { name: 'GUERNSEY', code: 'GG', display: 0 },
  { name: 'GUINEA', code: 'GN', display: 0 },
  { name: 'GUINEA-BISSAU', code: 'GW', display: 0 },
  { name: 'GUYANA', code: 'GY', display: 0 },
  { name: 'HAITI', code: 'HT', display: 0 },
  { name: 'HEARD ISLAND AND MCDONALD ISLANDS', code: 'HM', display: 0 },
  { name: 'HOLY SEE (VATICAN CITY STATE)', code: 'VA', display: 0 },
  { name: 'HONDURAS', code: 'HN', display: 0 },
  { name: 'HONG KONG', code: 'HK', display: 0 },
  { name: 'HUNGARY', code: 'HU', display: 0 },
  { name: 'ICELAND', code: 'IS', display: 0 },
  { name: 'INDIA', code: 'IN', display: 1 },
  { name: 'INDONESIA', code: 'ID', display: 0 },
  { name: 'IRAN, ISLAMIC REPUBLIC OF', code: 'IR', display: 0 },
  { name: 'IRAQ', code: 'IQ', display: 0 },
  { name: 'IRELAND', code: 'IE', display: 0 },
  { name: 'ISLE OF MAN', code: 'IM', display: 0 },
  { name: 'ISRAEL', code: 'IL', display: 0 },
  { name: 'ITALY', code: 'IT', display: 0 },
  { name: 'JAMAICA', code: 'JM', display: 0 },
  { name: 'JAPAN', code: 'JP', display: 0 },
  { name: 'JERSEY', code: 'JE', display: 0 },
  { name: 'JORDAN', code: 'JO', display: 0 },
  { name: 'KAZAKHSTAN', code: 'KZ', display: 0 },
  { name: 'KENYA', code: 'KE', display: 0 },
  { name: 'KIRIBATI', code: 'KI', display: 0 },
  { name: 'KOREA, DEMOCRATIC PEOPLES REPUBLIC OF', code: 'KP', display: 0 },
  { name: 'KOREA, REPUBLIC OF', code: 'KR', display: 0 },
  { name: 'KUWAIT', code: 'KW', display: 0 },
  { name: 'KYRGYZSTAN', code: 'KG', display: 0 },
  { name: 'LAO PEOPLES DEMOCRATIC REPUBLIC', code: 'LA', display: 0 },
  { name: 'LATVIA', code: 'LV', display: 0 },
  { name: 'LEBANON', code: 'LB', display: 0 },
  { name: 'LESOTHO', code: 'LS', display: 0 },
  { name: 'LIBERIA', code: 'LR', display: 0 },
  { name: 'LIBYA', code: 'LY', display: 0 },
  { name: 'LIECHTENSTEIN', code: 'LI', display: 0 },
  { name: 'LITHUANIA', code: 'LT', display: 0 },
  { name: 'LUXEMBOURG', code: 'LU', display: 0 },
  { name: 'MACAO', code: 'MO', display: 0 },
  { name: 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', code: 'MK', display: 0 },
  { name: 'MADAGASCAR', code: 'MG', display: 0 },
  { name: 'MALAWI', code: 'MW', display: 0 },
  { name: 'MALAYSIA', code: 'MY', display: 0 },
  { name: 'MALDIVES', code: 'MV', display: 0 },
  { name: 'MALI', code: 'ML', display: 0 },
  { name: 'MALTA', code: 'MT', display: 0 },
  { name: 'MARSHALL ISLANDS', code: 'MH', display: 0 },
  { name: 'MARTINIQUE', code: 'MQ', display: 0 },
  { name: 'MAURITANIA', code: 'MR', display: 0 },
  { name: 'MAURITIUS', code: 'MU', display: 0 },
  { name: 'MAYOTTE', code: 'YT', display: 0 },
  { name: 'MEXICO', code: 'MX', display: 0 },
  { name: 'MICRONESIA, FEDERATED STATES OF', code: 'FM', display: 0 },
  { name: 'MOLDOVA, REPUBLIC OF', code: 'MD', display: 0 },
  { name: 'MONACO', code: 'MC', display: 0 },
  { name: 'MONGOLIA', code: 'MN', display: 0 },
  { name: 'MONTENEGRO', code: 'ME', display: 0 },
  { name: 'MONTSERRAT', code: 'MS', display: 0 },
  { name: 'MOROCCO', code: 'MA', display: 0 },
  { name: 'MOZAMBIQUE', code: 'MZ', display: 0 },
  { name: 'MYANMAR', code: 'MM', display: 0 },
  { name: 'NAMIBIA', code: 'NA', display: 0 },
  { name: 'NAURU', code: 'NR', display: 0 },
  { name: 'NEPAL', code: 'NP', display: 0 },
  { name: 'NETHERLANDS', code: 'NL', display: 0 },
  { name: 'NEW CALEDONIA', code: 'NC', display: 0 },
  { name: 'NEW ZEALAND', code: 'NZ', display: 0 },
  { name: 'NICARAGUA', code: 'NI', display: 0 },
  { name: 'NIGER', code: 'NE', display: 0 },
  { name: 'NIGERIA', code: 'NG', display: 0 },
  { name: 'NIUE', code: 'NU', display: 0 },
  { name: 'NORFOLK ISLAND', code: 'NF', display: 0 },
  { name: 'NORTHERN MARIANA ISLANDS', code: 'MP', display: 0 },
  { name: 'NORWAY', code: 'NO', display: 0 },
  { name: 'OMAN', code: 'OM', display: 0 },
  { name: 'PAKISTAN', code: 'PK', display: 0 },
  { name: 'PALAU', code: 'PW', display: 0 },
  { name: 'PALESTINE, STATE OF', code: 'PS', display: 0 },
  { name: 'PANAMA', code: 'PA', display: 0 },
  { name: 'PAPUA NEW GUINEA', code: 'PG', display: 0 },
  { name: 'PARAGUAY', code: 'PY', display: 0 },
  { name: 'PERU', code: 'PE', display: 0 },
  { name: 'PHILIPPINES', code: 'PH', display: 0 },
  { name: 'PITCAIRN', code: 'PN', display: 0 },
  { name: 'POLAND', code: 'PL', display: 0 },
  { name: 'PORTUGAL', code: 'PT', display: 0 },
  { name: 'PUERTO RICO', code: 'PR', display: 0 },
  { name: 'QATAR', code: 'QA', display: 0 },
  { name: 'REUNION', code: 'RE', display: 0 },
  { name: 'ROMANIA', code: 'RO', display: 0 },
  { name: 'RUSSIAN FEDERATION', code: 'RU', display: 0 },
  { name: 'RWANDA', code: 'RW', display: 0 },
  { name: 'SAINT BARTHELEMY', code: 'BL', display: 0 },
  { name: 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', code: 'SH', display: 0 },
  { name: 'SAINT KITTS AND NEVIS', code: 'KN', display: 0 },
  { name: 'SAINT LUCIA', code: 'LC', display: 0 },
  { name: 'SAINT MARTIN (FRENCH PART)', code: 'MF', display: 0 },
  { name: 'SAINT PIERRE AND MIQUELON', code: 'PM', display: 0 },
  { name: 'SAINT VINCENT AND THE GRENADINES', code: 'VC', display: 0 },
  { name: 'SAMOA', code: 'WS', display: 0 },
  { name: 'SAN MARINO', code: 'SM', display: 0 },
  { name: 'SAO TOME AND PRINCIPE', code: 'ST', display: 0 },
  { name: 'SAUDI ARABIA', code: 'SA', display: 0 },
  { name: 'SENEGAL', code: 'SN', display: 0 },
  { name: 'SERBIA', code: 'RS', display: 0 },
  { name: 'SEYCHELLES', code: 'SC', display: 0 },
  { name: 'SIERRA LEONE', code: 'SL', display: 0 },
  { name: 'SINGAPORE', code: 'SG', display: 0 },
  { name: 'SINT MAARTEN (DUTCH PART)', code: 'SX', display: 0 },
  { name: 'SLOVAKIA', code: 'SK', display: 0 },
  { name: 'SLOVENIA', code: 'SI', display: 0 },
  { name: 'SOLOMON ISLANDS', code: 'SB', display: 0 },
  { name: 'SOMALIA', code: 'SO', display: 0 },
  { name: 'SOUTH AFRICA', code: 'ZA', display: 0 },
  { name: 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', code: 'GS', display: 0 },
  { name: 'SOUTH SUDAN', code: 'SS', display: 0 },
  { name: 'SPAIN', code: 'ES', display: 0 },
  { name: 'SRI LANKA', code: 'LK', display: 0 },
  { name: 'SUDAN', code: 'SD', display: 0 },
  { name: 'SURINAME', code: 'SR', display: 0 },
  { name: 'SVALBARD AND JAN MAYEN', code: 'SJ', display: 0 },
  { name: 'SWAZILAND', code: 'SZ', display: 0 },
  { name: 'SWEDEN', code: 'SE', display: 0 },
  { name: 'SWITZERLAND', code: 'CH', display: 0 },
  { name: 'SYRIAN ARAB REPUBLIC', code: 'SY', display: 0 },
  { name: 'TAIWAN, PROVINCE OF CHINA', code: 'TW', display: 0 },
  { name: 'TAJIKISTAN', code: 'TJ', display: 0 },
  { name: 'TANZANIA, UNITED REPUBLIC OF', code: 'TZ', display: 0 },
  { name: 'THAILAND', code: 'TH', display: 0 },
  { name: 'TIMOR-LESTE', code: 'TL', display: 0 },
  { name: 'TOGO', code: 'TG', display: 0 },
  { name: 'TOKELAU', code: 'TK', display: 0 },
  { name: 'TONGA', code: 'TO', display: 0 },
  { name: 'TRINIDAD AND TOBAGO', code: 'TT', display: 0 },
  { name: 'TUNISIA', code: 'TN', display: 0 },
  { name: 'TURKEY', code: 'TR', display: 0 },
  { name: 'TURKMENISTAN', code: 'TM', display: 0 },
  { name: 'TURKS AND CAICOS ISLANDS', code: 'TC', display: 0 },
  { name: 'TUVALU', code: 'TV', display: 0 },
  { name: 'UGANDA', code: 'UG', display: 0 },
  { name: 'UKRAINE', code: 'UA', display: 0 },
  { name: 'UNITED ARAB EMIRATES', code: 'AE', display: 0 },
  { name: 'UNITED KINGDOM', code: 'GB', display: 0 },
  { name: 'UNITED STATES', code: 'US', display: 0 },
  { name: 'UNITED STATES MINOR OUTLYING ISLANDS', code: 'UM', display: 0 },
  { name: 'URUGUAY', code: 'UY', display: 0 },
  { name: 'UZBEKISTAN', code: 'UZ', display: 0 },
  { name: 'VANUATU', code: 'VU', display: 0 },
  { name: 'VENEZUELA, BOLIVARIAN REPUBLIC OF', code: 'VE', display: 0 },
  { name: 'VIET NAM', code: 'VN', display: 0 },
  { name: 'VIRGIN ISLANDS, BRITISH', code: 'VG', display: 0 },
  { name: 'VIRGIN ISLANDS, U.S.', code: 'VI', display: 0 },
  { name: 'WALLIS AND FUTUNA', code: 'WF', display: 0 },
  { name: 'WESTERN SAHARA', code: 'EH', display: 0 },
  { name: 'YEMEN', code: 'YE', display: 0 },
  { name: 'ZAMBIA', code: 'ZM', display: 0 },
  { name: 'ZIMBABWE', code: 'ZW', display: 0 },
])
end
roles = ["moderator","normal_user","farmer","buyer","farmer and buyer","admin","super_admin"]
roles.each do |role|
  Role.find_or_create_by_name(:name => role)
end

  community_types = ["top community","farmer community", "buyer community", "general community"]
  community_types.each do |ct|
    CommunityType.find_or_create_by_name(:name => ct)
  end  
  community_levels = ["first level","second level","third level","fourth level","fifth level","sixth level","seventh level", "eighth level"]
  community_levels.each do |cl|
     CommunityLevel.find_or_create_by_name(:name => cl)
  end
  
  if Community.where(:name => "Agriculture Desk").first.blank? 
    community = Community.new
    community.name = "Agriculture Desk"
    community.community_type_id = CommunityType.find_by_name("top community").id
    community.community_level_id = CommunityLevel.find_by_name("first level").id
    community.status = 1
    community.description = "Agriculture Desk is a top community"
    community.product_id = 0
    community.save
  end  

  if User.where(:email => "shanmukhakatta@gmail.com").first.blank?
  #Create the superadmin user
    u = User.new(:password => "superadmin32", :password_confirmation => "superadmin32", :email => "shanmukhakatta@gmail.com")
    u.username = "agriculturedesk32"
    u.active = true
    u.save
 end
 
 role_id =  Role.find_by_name("super_admin").id
 if UserRoleCommunity.where(:role_id => role_id).first.blank?
   u_r_c = UserRoleCommunity.new
   u_r_c.role_id =  Role.find_by_name("super_admin").id rescue nil
   user_id = User.find_by_username("agriculturedesk32").id rescue nil
   u_r_c.user_id = user_id
   u_r_c.status = 1
   community_id = Community.where(:name => "Agriculture Desk").first.id rescue nil
   u_r_c.community_id = community_id
   u_r_c.save
end   
   
