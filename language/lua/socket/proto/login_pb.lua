-- Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf"
module('login_pb')


local LOGINTYPE = protobuf.EnumDescriptor();
local LOGINTYPE_LOGIN_PASSWORD_ENUM = protobuf.EnumValueDescriptor();
local LOGINTYPE_LOGIN_SNDA_PF_ENUM = protobuf.EnumValueDescriptor();
local LOGINTYPE_LOGIN_QQ_PF_ENUM = protobuf.EnumValueDescriptor();
local LOGINTYPE_LGOIN_WECHAT_PF_ENUM = protobuf.EnumValueDescriptor();
local LOGINTYPE_LOGIN_IOS_GUEST_ENUM = protobuf.EnumValueDescriptor();
local LOGINTYPE_LOGIN_IOS_AUDIT_ENUM = protobuf.EnumValueDescriptor();
local PLATTYPE = protobuf.EnumDescriptor();
local PLATTYPE_PLAT_IOS_ENUM = protobuf.EnumValueDescriptor();
local PLATTYPE_PLAT_ANDROID_ENUM = protobuf.EnumValueDescriptor();
local QUERYGATEARG = protobuf.Descriptor();
local QUERYGATEARG_TOKEN_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_ACCOUNT_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_PASSWORD_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_TYPE_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_PF_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_OPENID_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_PLATID_FIELD = protobuf.FieldDescriptor();
local QUERYGATEARG_VERSION_FIELD = protobuf.FieldDescriptor();

LOGINTYPE_LOGIN_PASSWORD_ENUM.name = "LOGIN_PASSWORD"
LOGINTYPE_LOGIN_PASSWORD_ENUM.index = 0
LOGINTYPE_LOGIN_PASSWORD_ENUM.number = 0
LOGINTYPE_LOGIN_SNDA_PF_ENUM.name = "LOGIN_SNDA_PF"
LOGINTYPE_LOGIN_SNDA_PF_ENUM.index = 1
LOGINTYPE_LOGIN_SNDA_PF_ENUM.number = 1
LOGINTYPE_LOGIN_QQ_PF_ENUM.name = "LOGIN_QQ_PF"
LOGINTYPE_LOGIN_QQ_PF_ENUM.index = 2
LOGINTYPE_LOGIN_QQ_PF_ENUM.number = 2
LOGINTYPE_LGOIN_WECHAT_PF_ENUM.name = "LGOIN_WECHAT_PF"
LOGINTYPE_LGOIN_WECHAT_PF_ENUM.index = 3
LOGINTYPE_LGOIN_WECHAT_PF_ENUM.number = 3
LOGINTYPE_LOGIN_IOS_GUEST_ENUM.name = "LOGIN_IOS_GUEST"
LOGINTYPE_LOGIN_IOS_GUEST_ENUM.index = 4
LOGINTYPE_LOGIN_IOS_GUEST_ENUM.number = 4
LOGINTYPE_LOGIN_IOS_AUDIT_ENUM.name = "LOGIN_IOS_AUDIT"
LOGINTYPE_LOGIN_IOS_AUDIT_ENUM.index = 5
LOGINTYPE_LOGIN_IOS_AUDIT_ENUM.number = 5
LOGINTYPE.name = "LoginType"
LOGINTYPE.full_name = ".LoginType"
LOGINTYPE.values = {LOGINTYPE_LOGIN_PASSWORD_ENUM,LOGINTYPE_LOGIN_SNDA_PF_ENUM,LOGINTYPE_LOGIN_QQ_PF_ENUM,LOGINTYPE_LGOIN_WECHAT_PF_ENUM,LOGINTYPE_LOGIN_IOS_GUEST_ENUM,LOGINTYPE_LOGIN_IOS_AUDIT_ENUM}
PLATTYPE_PLAT_IOS_ENUM.name = "PLAT_IOS"
PLATTYPE_PLAT_IOS_ENUM.index = 0
PLATTYPE_PLAT_IOS_ENUM.number = 0
PLATTYPE_PLAT_ANDROID_ENUM.name = "PLAT_ANDROID"
PLATTYPE_PLAT_ANDROID_ENUM.index = 1
PLATTYPE_PLAT_ANDROID_ENUM.number = 1
PLATTYPE.name = "PlatType"
PLATTYPE.full_name = ".PlatType"
PLATTYPE.values = {PLATTYPE_PLAT_IOS_ENUM,PLATTYPE_PLAT_ANDROID_ENUM}
QUERYGATEARG_TOKEN_FIELD.name = "token"
QUERYGATEARG_TOKEN_FIELD.full_name = ".QueryGateArg.token"
QUERYGATEARG_TOKEN_FIELD.number = 1
QUERYGATEARG_TOKEN_FIELD.index = 0
QUERYGATEARG_TOKEN_FIELD.label = 1
QUERYGATEARG_TOKEN_FIELD.has_default_value = false
QUERYGATEARG_TOKEN_FIELD.default_value = ""
QUERYGATEARG_TOKEN_FIELD.type = 9
QUERYGATEARG_TOKEN_FIELD.cpp_type = 9

QUERYGATEARG_ACCOUNT_FIELD.name = "account"
QUERYGATEARG_ACCOUNT_FIELD.full_name = ".QueryGateArg.account"
QUERYGATEARG_ACCOUNT_FIELD.number = 2
QUERYGATEARG_ACCOUNT_FIELD.index = 1
QUERYGATEARG_ACCOUNT_FIELD.label = 1
QUERYGATEARG_ACCOUNT_FIELD.has_default_value = false
QUERYGATEARG_ACCOUNT_FIELD.default_value = ""
QUERYGATEARG_ACCOUNT_FIELD.type = 9
QUERYGATEARG_ACCOUNT_FIELD.cpp_type = 9

QUERYGATEARG_PASSWORD_FIELD.name = "password"
QUERYGATEARG_PASSWORD_FIELD.full_name = ".QueryGateArg.password"
QUERYGATEARG_PASSWORD_FIELD.number = 3
QUERYGATEARG_PASSWORD_FIELD.index = 2
QUERYGATEARG_PASSWORD_FIELD.label = 1
QUERYGATEARG_PASSWORD_FIELD.has_default_value = false
QUERYGATEARG_PASSWORD_FIELD.default_value = ""
QUERYGATEARG_PASSWORD_FIELD.type = 9
QUERYGATEARG_PASSWORD_FIELD.cpp_type = 9

QUERYGATEARG_TYPE_FIELD.name = "type"
QUERYGATEARG_TYPE_FIELD.full_name = ".QueryGateArg.type"
QUERYGATEARG_TYPE_FIELD.number = 4
QUERYGATEARG_TYPE_FIELD.index = 3
QUERYGATEARG_TYPE_FIELD.label = 1
QUERYGATEARG_TYPE_FIELD.has_default_value = false
QUERYGATEARG_TYPE_FIELD.default_value = nil
QUERYGATEARG_TYPE_FIELD.enum_type = LOGINTYPE
QUERYGATEARG_TYPE_FIELD.type = 14
QUERYGATEARG_TYPE_FIELD.cpp_type = 8

QUERYGATEARG_PF_FIELD.name = "pf"
QUERYGATEARG_PF_FIELD.full_name = ".QueryGateArg.pf"
QUERYGATEARG_PF_FIELD.number = 5
QUERYGATEARG_PF_FIELD.index = 4
QUERYGATEARG_PF_FIELD.label = 1
QUERYGATEARG_PF_FIELD.has_default_value = false
QUERYGATEARG_PF_FIELD.default_value = ""
QUERYGATEARG_PF_FIELD.type = 9
QUERYGATEARG_PF_FIELD.cpp_type = 9

QUERYGATEARG_OPENID_FIELD.name = "openid"
QUERYGATEARG_OPENID_FIELD.full_name = ".QueryGateArg.openid"
QUERYGATEARG_OPENID_FIELD.number = 6
QUERYGATEARG_OPENID_FIELD.index = 5
QUERYGATEARG_OPENID_FIELD.label = 1
QUERYGATEARG_OPENID_FIELD.has_default_value = false
QUERYGATEARG_OPENID_FIELD.default_value = ""
QUERYGATEARG_OPENID_FIELD.type = 9
QUERYGATEARG_OPENID_FIELD.cpp_type = 9

QUERYGATEARG_PLATID_FIELD.name = "platid"
QUERYGATEARG_PLATID_FIELD.full_name = ".QueryGateArg.platid"
QUERYGATEARG_PLATID_FIELD.number = 7
QUERYGATEARG_PLATID_FIELD.index = 6
QUERYGATEARG_PLATID_FIELD.label = 1
QUERYGATEARG_PLATID_FIELD.has_default_value = false
QUERYGATEARG_PLATID_FIELD.default_value = nil
QUERYGATEARG_PLATID_FIELD.enum_type = PLATTYPE
QUERYGATEARG_PLATID_FIELD.type = 14
QUERYGATEARG_PLATID_FIELD.cpp_type = 8

QUERYGATEARG_VERSION_FIELD.name = "version"
QUERYGATEARG_VERSION_FIELD.full_name = ".QueryGateArg.version"
QUERYGATEARG_VERSION_FIELD.number = 8
QUERYGATEARG_VERSION_FIELD.index = 7
QUERYGATEARG_VERSION_FIELD.label = 1
QUERYGATEARG_VERSION_FIELD.has_default_value = false
QUERYGATEARG_VERSION_FIELD.default_value = ""
QUERYGATEARG_VERSION_FIELD.type = 9
QUERYGATEARG_VERSION_FIELD.cpp_type = 9

QUERYGATEARG.name = "QueryGateArg"
QUERYGATEARG.full_name = ".QueryGateArg"
QUERYGATEARG.nested_types = {}
QUERYGATEARG.enum_types = {}
QUERYGATEARG.fields = {QUERYGATEARG_TOKEN_FIELD, QUERYGATEARG_ACCOUNT_FIELD, QUERYGATEARG_PASSWORD_FIELD, QUERYGATEARG_TYPE_FIELD, QUERYGATEARG_PF_FIELD, QUERYGATEARG_OPENID_FIELD, QUERYGATEARG_PLATID_FIELD, QUERYGATEARG_VERSION_FIELD}
QUERYGATEARG.is_extendable = false
QUERYGATEARG.extensions = {}

LGOIN_WECHAT_PF = 3
LOGIN_IOS_AUDIT = 5
LOGIN_IOS_GUEST = 4
LOGIN_PASSWORD = 0
LOGIN_QQ_PF = 2
LOGIN_SNDA_PF = 1
PLAT_ANDROID = 1
PLAT_IOS = 0
QueryGateArg = protobuf.Message(QUERYGATEARG)

