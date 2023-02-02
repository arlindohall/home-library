# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activemodel` gem.
# Please instead update this file by running `bin/tapioca gem activemodel`.

module ActiveModel
  extend ::ActiveSupport::Autoload

  class << self
    def eager_load!; end
    def gem_version; end
    def version; end
  end
end

module ActiveModel::API
  include ::ActiveModel::ForbiddenAttributesProtection
  include ::ActiveModel::AttributeAssignment
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods
  include ::ActiveModel::Validations
  include ::ActiveModel::Conversion

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods
  mixes_in_class_methods ::ActiveModel::Callbacks
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModel::Translation
  mixes_in_class_methods ::ActiveModel::Validations::HelperMethods
  mixes_in_class_methods ::ActiveModel::Conversion::ClassMethods

  def initialize(attributes = T.unsafe(nil)); end

  def persisted?; end

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
    def _validators; end
    def _validators?; end
  end
end

class ActiveModel::Attribute
  def initialize(name, value_before_type_cast, type, original_attribute = T.unsafe(nil), value = T.unsafe(nil)); end

  def ==(other); end
  def came_from_user?; end
  def changed?; end
  def changed_in_place?; end
  def encode_with(coder); end
  def eql?(other); end
  def forgetting_assignment; end
  def has_been_read?; end
  def hash; end
  def init_with(coder); end
  def initialized?; end
  def name; end
  def original_value; end
  def original_value_for_database; end
  def serializable?(&block); end
  def type; end
  def type_cast(*_arg0); end
  def value; end
  def value_before_type_cast; end
  def value_for_database; end
  def with_cast_value(value); end
  def with_type(type); end
  def with_value_from_database(value); end
  def with_value_from_user(value); end

  private

  def _original_value_for_database; end
  def assigned?; end
  def changed_from_assignment?; end
  def initialize_dup(other); end
  def original_attribute; end

  class << self
    def from_database(name, value_before_type_cast, type, value = T.unsafe(nil)); end
    def from_user(name, value_before_type_cast, type, original_attribute = T.unsafe(nil)); end
    def null(name); end
    def uninitialized(name, type); end
    def with_cast_value(name, value_before_type_cast, type); end
  end
end

class ActiveModel::Attribute::FromDatabase < ::ActiveModel::Attribute
  def type_cast(value); end

  private

  def _original_value_for_database; end
end

class ActiveModel::Attribute::FromUser < ::ActiveModel::Attribute
  def came_from_user?; end
  def type_cast(value); end
end

class ActiveModel::Attribute::Null < ::ActiveModel::Attribute
  def initialize(name); end

  def type_cast(*_arg0); end
  def with_cast_value(value); end
  def with_type(type); end
  def with_value_from_database(value); end
  def with_value_from_user(value); end
end

class ActiveModel::Attribute::Uninitialized < ::ActiveModel::Attribute
  def initialize(name, type); end

  def forgetting_assignment; end
  def initialized?; end
  def original_value; end
  def value; end
  def value_for_database; end
  def with_type(type); end
end

ActiveModel::Attribute::Uninitialized::UNINITIALIZED_ORIGINAL_VALUE = T.let(T.unsafe(nil), Object)

class ActiveModel::Attribute::UserProvidedDefault < ::ActiveModel::Attribute::FromUser
  def initialize(name, value, type, database_default); end

  def marshal_dump; end
  def marshal_load(values); end
  def value_before_type_cast; end
  def with_type(type); end

  private

  def user_provided_value; end
end

class ActiveModel::Attribute::WithCastValue < ::ActiveModel::Attribute
  def changed_in_place?; end
  def type_cast(value); end
end

module ActiveModel::AttributeAssignment
  include ::ActiveModel::ForbiddenAttributesProtection

  def assign_attributes(new_attributes); end
  def attributes=(new_attributes); end

  private

  def _assign_attribute(k, v); end
  def _assign_attributes(attributes); end
end

module ActiveModel::AttributeMethods
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::AttributeMethods::ClassMethods

  def attribute_missing(match, *args, **_arg2, &block); end
  def method_missing(method, *args, **_arg2, &block); end
  def respond_to?(method, include_private_methods = T.unsafe(nil)); end
  def respond_to_without_attributes?(*_arg0); end

  private

  def _read_attribute(attr); end
  def attribute_method?(attr_name); end
  def matched_attribute_method(method_name); end
  def missing_attribute(attr_name, stack); end

  module GeneratedClassMethods
    def attribute_aliases; end
    def attribute_aliases=(value); end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers=(value); end
    def attribute_method_matchers?; end
  end

  module GeneratedInstanceMethods
    def attribute_aliases; end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers?; end
  end
end

module ActiveModel::AttributeMethods::AttrNames
  class << self
    def define_attribute_accessor_method(owner, attr_name, writer: T.unsafe(nil)); end
  end
end

ActiveModel::AttributeMethods::AttrNames::DEF_SAFE_NAME = T.let(T.unsafe(nil), Regexp)
ActiveModel::AttributeMethods::CALL_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

module ActiveModel::AttributeMethods::ClassMethods
  def alias_attribute(new_name, old_name); end
  def attribute_alias(name); end
  def attribute_alias?(new_name); end
  def attribute_method_affix(*affixes); end
  def attribute_method_prefix(*prefixes, parameters: T.unsafe(nil)); end
  def attribute_method_suffix(*suffixes, parameters: T.unsafe(nil)); end
  def define_attribute_method(attr_name, _owner: T.unsafe(nil)); end
  def define_attribute_methods(*attr_names); end
  def undefine_attribute_methods; end

  private

  def attribute_method_matchers_cache; end
  def attribute_method_matchers_matching(method_name); end
  def define_proxy_call(code_generator, name, target, parameters, *call_args, namespace:); end
  def generated_attribute_methods; end
  def instance_method_already_implemented?(method_name); end
end

class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher
  def initialize(prefix: T.unsafe(nil), suffix: T.unsafe(nil), parameters: T.unsafe(nil)); end

  def match(method_name); end
  def method_name(attr_name); end
  def parameters; end
  def prefix; end
  def suffix; end
  def target; end
end

class ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch < ::Struct
  def attr_name; end
  def attr_name=(_); end
  def target; end
  def target=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

ActiveModel::AttributeMethods::FORWARD_PARAMETERS = T.let(T.unsafe(nil), String)
ActiveModel::AttributeMethods::NAME_COMPILABLE_REGEXP = T.let(T.unsafe(nil), Regexp)

class ActiveModel::AttributeMutationTracker
  def initialize(attributes); end

  def any_changes?; end
  def change_to_attribute(attr_name); end
  def changed?(attr_name, from: T.unsafe(nil), to: T.unsafe(nil)); end
  def changed_attribute_names; end
  def changed_in_place?(attr_name); end
  def changed_values; end
  def changes; end
  def force_change(attr_name); end
  def forget_change(attr_name); end
  def original_value(attr_name); end

  private

  def attr_names; end
  def attribute_changed?(attr_name); end
  def attributes; end
  def fetch_value(attr_name); end
  def forced_changes; end
end

ActiveModel::AttributeMutationTracker::OPTION_NOT_GIVEN = T.let(T.unsafe(nil), Object)

class ActiveModel::AttributeSet
  def initialize(attributes); end

  def ==(other); end
  def [](name); end
  def []=(name, value); end
  def accessed; end
  def deep_dup; end
  def each_value(*_arg0, **_arg1, &_arg2); end
  def except(*_arg0, **_arg1, &_arg2); end
  def fetch(*_arg0, **_arg1, &_arg2); end
  def fetch_value(name, &block); end
  def freeze; end
  def key?(name); end
  def keys; end
  def map(&block); end
  def reset(key); end
  def to_h; end
  def to_hash; end
  def values_before_type_cast; end
  def values_for_database; end
  def write_cast_value(name, value); end
  def write_from_database(name, value); end
  def write_from_user(name, value); end

  protected

  def attributes; end

  private

  def default_attribute(name); end
  def initialize_clone(_); end
  def initialize_dup(_); end
end

class ActiveModel::AttributeSet::Builder
  def initialize(types, default_attributes = T.unsafe(nil)); end

  def build_from_database(values = T.unsafe(nil), additional_types = T.unsafe(nil)); end
  def default_attributes; end
  def types; end
end

class ActiveModel::AttributeSet::YAMLEncoder
  def initialize(default_types); end

  def decode(coder); end
  def encode(attribute_set, coder); end

  private

  def default_types; end
end

module ActiveModel::Attributes
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveModel::AttributeMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::AttributeMethods::ClassMethods
  mixes_in_class_methods ::ActiveModel::Attributes::ClassMethods

  def initialize(*_arg0); end

  def attribute_names; end
  def attributes; end
  def freeze; end

  private

  def _write_attribute(attr_name, value); end
  def attribute(attr_name); end
  def attribute=(attr_name, value); end
  def initialize_dup(other); end

  module GeneratedClassMethods
    def _default_attributes; end
    def _default_attributes=(value); end
    def _default_attributes?; end
    def attribute_aliases; end
    def attribute_aliases=(value); end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers=(value); end
    def attribute_method_matchers?; end
    def attribute_types; end
    def attribute_types=(value); end
    def attribute_types?; end
  end

  module GeneratedInstanceMethods
    def attribute_aliases; end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers?; end
  end
end

module ActiveModel::Attributes::ClassMethods
  def attribute(name, cast_type = T.unsafe(nil), default: T.unsafe(nil), **options); end
  def attribute_names; end

  private

  def define_default_attribute(name, value, type); end
  def define_method_attribute=(name, owner:); end
end

ActiveModel::Attributes::ClassMethods::NO_DEFAULT_PROVIDED = T.let(T.unsafe(nil), Object)

class ActiveModel::BlockValidator < ::ActiveModel::EachValidator
  def initialize(options, &block); end

  private

  def validate_each(record, attribute, value); end
end

module ActiveModel::Callbacks
  def define_model_callbacks(*callbacks); end

  private

  def _define_after_model_callback(klass, callback); end
  def _define_around_model_callback(klass, callback); end
  def _define_before_model_callback(klass, callback); end

  class << self
    def extended(base); end
  end
end

module ActiveModel::Conversion
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::Conversion::ClassMethods

  def to_key; end
  def to_model; end
  def to_param; end
  def to_partial_path; end
end

module ActiveModel::Conversion::ClassMethods
  def _to_partial_path; end
end

module ActiveModel::Dirty
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveModel::AttributeMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::AttributeMethods::ClassMethods

  def as_json(options = T.unsafe(nil)); end
  def attribute_changed?(attr_name, **options); end
  def attribute_changed_in_place?(attr_name); end
  def attribute_previously_changed?(attr_name, **options); end
  def attribute_previously_was(attr_name); end
  def attribute_was(attr_name); end
  def changed; end
  def changed?; end
  def changed_attributes; end
  def changes; end
  def changes_applied; end
  def clear_attribute_changes(attr_names); end
  def clear_changes_information; end
  def previous_changes; end
  def restore_attributes(attr_names = T.unsafe(nil)); end

  private

  def attribute_change(attr_name); end
  def attribute_previous_change(attr_name); end
  def attribute_will_change!(attr_name); end
  def clear_attribute_change(attr_name); end
  def forget_attribute_assignments; end
  def initialize_dup(other); end
  def mutations_before_last_save; end
  def mutations_from_database; end
  def restore_attribute!(attr_name); end

  module GeneratedClassMethods
    def attribute_aliases; end
    def attribute_aliases=(value); end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers=(value); end
    def attribute_method_matchers?; end
  end

  module GeneratedInstanceMethods
    def attribute_aliases; end
    def attribute_aliases?; end
    def attribute_method_matchers; end
    def attribute_method_matchers?; end
  end
end

class ActiveModel::EachValidator < ::ActiveModel::Validator
  def initialize(options); end

  def attributes; end
  def check_validity!; end
  def validate(record); end
  def validate_each(record, attribute, value); end

  private

  def prepare_value_for_validation(value, record, attr_name); end
end

class ActiveModel::Error
  def initialize(base, attribute, type = T.unsafe(nil), **options); end

  def ==(other); end
  def attribute; end
  def base; end
  def detail; end
  def details; end
  def eql?(other); end
  def full_message; end
  def hash; end
  def i18n_customize_full_message; end
  def i18n_customize_full_message=(_arg0); end
  def i18n_customize_full_message?; end
  def inspect; end
  def match?(attribute, type = T.unsafe(nil), **options); end
  def message; end
  def options; end
  def raw_type; end
  def strict_match?(attribute, type, **options); end
  def type; end

  protected

  def attributes_for_hash; end

  private

  def initialize_dup(other); end

  class << self
    def full_message(attribute, message, base); end
    def generate_message(attribute, type, base, options); end
    def i18n_customize_full_message; end
    def i18n_customize_full_message=(value); end
    def i18n_customize_full_message?; end
  end
end

ActiveModel::Error::CALLBACKS_OPTIONS = T.let(T.unsafe(nil), Array)
ActiveModel::Error::MESSAGE_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Errors
  include ::Enumerable
  extend ::Forwardable

  def initialize(base); end

  def [](attribute); end
  def add(attribute, type = T.unsafe(nil), **options); end
  def added?(attribute, type = T.unsafe(nil), options = T.unsafe(nil)); end
  def as_json(options = T.unsafe(nil)); end
  def attribute_names; end
  def clear(*args, **_arg1, &block); end
  def copy!(other); end
  def delete(attribute, type = T.unsafe(nil), **options); end
  def details; end
  def each(*args, **_arg1, &block); end
  def empty?(*args, **_arg1, &block); end
  def errors; end
  def full_message(attribute, message); end
  def full_messages; end
  def full_messages_for(attribute); end
  def generate_message(attribute, type = T.unsafe(nil), options = T.unsafe(nil)); end
  def group_by_attribute; end
  def has_key?(attribute); end
  def import(error, override_options = T.unsafe(nil)); end
  def include?(attribute); end
  def inspect; end
  def key?(attribute); end
  def merge!(other); end
  def messages; end
  def messages_for(attribute); end
  def objects; end
  def of_kind?(attribute, type = T.unsafe(nil)); end
  def size(*args, **_arg1, &block); end
  def to_a; end
  def to_hash(full_messages = T.unsafe(nil)); end
  def uniq!(*args, **_arg1, &block); end
  def where(attribute, type = T.unsafe(nil), **options); end

  private

  def initialize_dup(other); end
  def normalize_arguments(attribute, type, **options); end
end

ActiveModel::Errors::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
class ActiveModel::ForbiddenAttributesError < ::StandardError; end

module ActiveModel::ForbiddenAttributesProtection
  private

  def sanitize_for_mass_assignment(attributes); end
  def sanitize_forbidden_attributes(attributes); end
end

class ActiveModel::ForcedMutationTracker < ::ActiveModel::AttributeMutationTracker
  def initialize(attributes); end

  def change_to_attribute(attr_name); end
  def changed_in_place?(attr_name); end
  def finalize_changes; end
  def force_change(attr_name); end
  def forget_change(attr_name); end
  def original_value(attr_name); end

  private

  def attr_names; end
  def attribute_changed?(attr_name); end
  def clone_value(attr_name); end
  def fetch_value(attr_name); end
  def finalized_changes; end
end

class ActiveModel::LazyAttributeHash
  def initialize(types, values, additional_types, default_attributes, delegate_hash = T.unsafe(nil)); end

  def ==(other); end
  def [](key); end
  def []=(key, value); end
  def deep_dup; end
  def each_key(&block); end
  def each_value(*_arg0, **_arg1, &_arg2); end
  def except(*_arg0, **_arg1, &_arg2); end
  def fetch(*_arg0, **_arg1, &_arg2); end
  def key?(key); end
  def marshal_dump; end
  def marshal_load(values); end
  def transform_values(*_arg0, **_arg1, &_arg2); end

  protected

  def materialize; end

  private

  def additional_types; end
  def assign_default_value(name); end
  def default_attributes; end
  def delegate_hash; end
  def initialize_dup(_); end
  def types; end
  def values; end
end

class ActiveModel::LazyAttributeSet < ::ActiveModel::AttributeSet
  def initialize(values, types, additional_types, default_attributes, attributes = T.unsafe(nil)); end

  def fetch_value(name, &block); end
  def key?(name); end
  def keys; end

  protected

  def attributes; end

  private

  def additional_types; end
  def default_attribute(name, value_present = T.unsafe(nil), value = T.unsafe(nil)); end
  def default_attributes; end
  def types; end
  def values; end
end

module ActiveModel::Lint; end

module ActiveModel::Lint::Tests
  def test_errors_aref; end
  def test_model_naming; end
  def test_persisted?; end
  def test_to_key; end
  def test_to_param; end
  def test_to_partial_path; end

  private

  def assert_boolean(result, name); end
  def model; end
end

class ActiveModel::MissingAttributeError < ::NoMethodError; end

module ActiveModel::Model
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods
  include ::ActiveModel::Validations
  include ::ActiveModel::Conversion
  include ::ActiveModel::API

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods
  mixes_in_class_methods ::ActiveModel::Callbacks
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModel::Translation
  mixes_in_class_methods ::ActiveModel::Validations::HelperMethods
  mixes_in_class_methods ::ActiveModel::Conversion::ClassMethods

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
    def _validators; end
    def _validators?; end
  end
end

class ActiveModel::Name
  include ::Comparable

  def initialize(klass, namespace = T.unsafe(nil), name = T.unsafe(nil), locale = T.unsafe(nil)); end

  def !~(*_arg0, **_arg1, &_arg2); end
  def <=>(*_arg0, **_arg1, &_arg2); end
  def ==(arg); end
  def ===(arg); end
  def =~(*_arg0, **_arg1, &_arg2); end
  def as_json(*_arg0, **_arg1, &_arg2); end
  def cache_key; end
  def collection; end
  def collection=(_arg0); end
  def element; end
  def element=(_arg0); end
  def eql?(*_arg0, **_arg1, &_arg2); end
  def human(options = T.unsafe(nil)); end
  def i18n_key; end
  def i18n_key=(_arg0); end
  def match?(*_arg0, **_arg1, &_arg2); end
  def name; end
  def name=(_arg0); end
  def param_key; end
  def param_key=(_arg0); end
  def plural; end
  def plural=(_arg0); end
  def route_key; end
  def route_key=(_arg0); end
  def singular; end
  def singular=(_arg0); end
  def singular_route_key; end
  def singular_route_key=(_arg0); end
  def to_s(*_arg0, **_arg1, &_arg2); end
  def to_str(*_arg0, **_arg1, &_arg2); end
  def uncountable?; end

  private

  def _singularize(string); end
end

module ActiveModel::Naming
  def model_name; end

  class << self
    def extended(base); end
    def param_key(record_or_class); end
    def plural(record_or_class); end
    def route_key(record_or_class); end
    def singular(record_or_class); end
    def singular_route_key(record_or_class); end
    def uncountable?(record_or_class); end

    private

    def model_name_from_record_or_class(record_or_class); end
  end
end

class ActiveModel::NestedError < ::ActiveModel::Error
  extend ::Forwardable

  def initialize(base, inner_error, override_options = T.unsafe(nil)); end

  def inner_error; end
  def message(*args, **_arg1, &block); end
end

class ActiveModel::NullMutationTracker
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  def any_changes?; end
  def change_to_attribute(attr_name); end
  def changed?(attr_name, **_arg1); end
  def changed_attribute_names; end
  def changed_in_place?(attr_name); end
  def changed_values; end
  def changes; end
  def original_value(attr_name); end
end

class ActiveModel::Railtie < ::Rails::Railtie; end
class ActiveModel::RangeError < ::RangeError; end

module ActiveModel::SecurePassword
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActiveModel::SecurePassword::ClassMethods

  class << self
    def min_cost; end
    def min_cost=(_arg0); end
  end
end

module ActiveModel::SecurePassword::ClassMethods
  def has_secure_password(attribute = T.unsafe(nil), validations: T.unsafe(nil)); end
end

class ActiveModel::SecurePassword::InstanceMethodsOnActivation < ::Module
  def initialize(attribute); end
end

ActiveModel::SecurePassword::MAX_PASSWORD_LENGTH_ALLOWED = T.let(T.unsafe(nil), Integer)

module ActiveModel::Serialization
  def read_attribute_for_serialization(*_arg0); end
  def serializable_hash(options = T.unsafe(nil)); end

  private

  def attribute_names_for_serialization; end
  def serializable_add_includes(options = T.unsafe(nil)); end
  def serializable_attributes(attribute_names); end
end

module ActiveModel::Serializers
  extend ::ActiveSupport::Autoload
end

module ActiveModel::Serializers::JSON
  include ::ActiveModel::Serialization
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Naming

  def as_json(options = T.unsafe(nil)); end
  def from_json(json, include_root = T.unsafe(nil)); end

  module GeneratedClassMethods
    def include_root_in_json; end
    def include_root_in_json=(value); end
    def include_root_in_json?; end
  end

  module GeneratedInstanceMethods
    def include_root_in_json; end
    def include_root_in_json?; end
  end
end

class ActiveModel::StrictValidationFailed < ::StandardError; end

module ActiveModel::Translation
  include ::ActiveModel::Naming

  def human_attribute_name(attribute, options = T.unsafe(nil)); end
  def i18n_scope; end
  def lookup_ancestors; end
end

module ActiveModel::Type
  class << self
    def default_value; end
    def lookup(*_arg0, **_arg1, &_arg2); end
    def register(type_name, klass = T.unsafe(nil), &block); end
    def registry; end
    def registry=(_arg0); end
  end
end

class ActiveModel::Type::BigInteger < ::ActiveModel::Type::Integer
  private

  def max_value; end
end

class ActiveModel::Type::Binary < ::ActiveModel::Type::Value
  def binary?; end
  def cast(value); end
  def changed_in_place?(raw_old_value, value); end
  def serialize(value); end
  def type; end
end

class ActiveModel::Type::Binary::Data
  def initialize(value); end

  def ==(other); end
  def hex; end
  def to_s; end
  def to_str; end
end

class ActiveModel::Type::Boolean < ::ActiveModel::Type::Value
  def serialize(value); end
  def type; end

  private

  def cast_value(value); end
end

ActiveModel::Type::Boolean::FALSE_VALUES = T.let(T.unsafe(nil), Set)

class ActiveModel::Type::Date < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Timezone
  include ::ActiveModel::Type::Helpers::AcceptsMultiparameterTime::InstanceMethods

  def type; end
  def type_cast_for_schema(value); end

  private

  def cast_value(value); end
  def fallback_string_to_date(string); end
  def fast_string_to_date(string); end
  def new_date(year, mon, mday); end
  def value_from_multiparameter_assignment(*_arg0); end
end

ActiveModel::Type::Date::ISO_DATE = T.let(T.unsafe(nil), Regexp)

class ActiveModel::Type::DateTime < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Timezone
  include ::ActiveModel::Type::Helpers::TimeValue
  include ::ActiveModel::Type::Helpers::AcceptsMultiparameterTime::InstanceMethods

  def type; end

  private

  def cast_value(value); end
  def fallback_string_to_time(string); end
  def microseconds(time); end
  def value_from_multiparameter_assignment(values_hash); end
end

class ActiveModel::Type::Decimal < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def type; end
  def type_cast_for_schema(value); end

  private

  def apply_scale(value); end
  def cast_value(value); end
  def convert_float_to_big_decimal(value); end
  def float_precision; end
end

ActiveModel::Type::Decimal::BIGDECIMAL_PRECISION = T.let(T.unsafe(nil), Integer)

class ActiveModel::Type::Float < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def type; end
  def type_cast_for_schema(value); end

  private

  def cast_value(value); end
end

module ActiveModel::Type::Helpers; end

class ActiveModel::Type::Helpers::AcceptsMultiparameterTime < ::Module
  def initialize(defaults: T.unsafe(nil)); end
end

module ActiveModel::Type::Helpers::AcceptsMultiparameterTime::InstanceMethods
  def assert_valid_value(value); end
  def cast(value); end
  def serialize(value); end
  def value_constructed_by_mass_assignment?(value); end
end

module ActiveModel::Type::Helpers::Mutable
  def cast(value); end
  def changed_in_place?(raw_old_value, new_value); end
end

module ActiveModel::Type::Helpers::Numeric
  def cast(value); end
  def changed?(old_value, _new_value, new_value_before_type_cast); end
  def serialize(value); end

  private

  def equal_nan?(old_value, new_value); end
  def non_numeric_string?(value); end
  def number_to_non_number?(old_value, new_value_before_type_cast); end
end

ActiveModel::Type::Helpers::Numeric::NUMERIC_REGEX = T.let(T.unsafe(nil), Regexp)

module ActiveModel::Type::Helpers::TimeValue
  def apply_seconds_precision(value); end
  def serialize(value); end
  def type_cast_for_schema(value); end
  def user_input_in_time_zone(value); end

  private

  def fast_string_to_time(string); end
  def new_time(year, mon, mday, hour, min, sec, microsec, offset = T.unsafe(nil)); end
end

ActiveModel::Type::Helpers::TimeValue::ISO_DATETIME = T.let(T.unsafe(nil), Regexp)

module ActiveModel::Type::Helpers::Timezone
  def default_timezone; end
  def is_utc?; end
end

class ActiveModel::Type::ImmutableString < ::ActiveModel::Type::Value
  def initialize(**args); end

  def serialize(value); end
  def type; end

  private

  def cast_value(value); end
end

class ActiveModel::Type::Integer < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Numeric

  def initialize(**_arg0); end

  def deserialize(value); end
  def serializable?(value); end
  def serialize(value); end
  def type; end

  private

  def _limit; end
  def cast_value(value); end
  def ensure_in_range(value); end
  def in_range?(value); end
  def max_value; end
  def min_value; end
  def range; end
end

ActiveModel::Type::Integer::DEFAULT_LIMIT = T.let(T.unsafe(nil), Integer)

class ActiveModel::Type::Registry
  def initialize; end

  def lookup(symbol, *args, **_arg2); end
  def register(type_name, klass = T.unsafe(nil), &block); end

  private

  def initialize_copy(other); end
  def registrations; end
end

class ActiveModel::Type::String < ::ActiveModel::Type::ImmutableString
  def changed_in_place?(raw_old_value, new_value); end
  def to_immutable_string; end

  private

  def cast_value(value); end
end

class ActiveModel::Type::Time < ::ActiveModel::Type::Value
  include ::ActiveModel::Type::Helpers::Timezone
  include ::ActiveModel::Type::Helpers::TimeValue
  include ::ActiveModel::Type::Helpers::AcceptsMultiparameterTime::InstanceMethods

  def type; end
  def user_input_in_time_zone(value); end

  private

  def cast_value(value); end
end

class ActiveModel::Type::Value
  def initialize(precision: T.unsafe(nil), limit: T.unsafe(nil), scale: T.unsafe(nil)); end

  def ==(other); end
  def assert_valid_value(_); end
  def binary?; end
  def cast(value); end
  def changed?(old_value, new_value, _new_value_before_type_cast); end
  def changed_in_place?(raw_old_value, new_value); end
  def deserialize(value); end
  def eql?(other); end
  def force_equality?(_value); end
  def hash; end
  def limit; end
  def map(value); end
  def precision; end
  def scale; end
  def serializable?(value); end
  def serialize(value); end
  def type; end
  def type_cast_for_schema(value); end
  def value_constructed_by_mass_assignment?(_value); end

  private

  def cast_value(value); end
end

class ActiveModel::UnknownAttributeError < ::NoMethodError
  def initialize(record, attribute); end

  def attribute; end
  def record; end
end

module ActiveModel::VERSION; end
ActiveModel::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)
ActiveModel::VERSION::MINOR = T.let(T.unsafe(nil), Integer)
ActiveModel::VERSION::PRE = T.let(T.unsafe(nil), String)
ActiveModel::VERSION::STRING = T.let(T.unsafe(nil), String)
ActiveModel::VERSION::TINY = T.let(T.unsafe(nil), Integer)

class ActiveModel::ValidationError < ::StandardError
  def initialize(model); end

  def model; end
end

module ActiveModel::Validations
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Validations::ClassMethods
  mixes_in_class_methods ::ActiveModel::Callbacks
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModel::Translation
  mixes_in_class_methods ::ActiveModel::Validations::HelperMethods

  def errors; end
  def invalid?(context = T.unsafe(nil)); end
  def read_attribute_for_validation(*_arg0); end
  def valid?(context = T.unsafe(nil)); end
  def validate(context = T.unsafe(nil)); end
  def validate!(context = T.unsafe(nil)); end
  def validates_with(*args, &block); end

  private

  def initialize_dup(other); end
  def raise_validation_error; end
  def run_validations!; end

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
    def _validators; end
    def _validators?; end
  end
end

class ActiveModel::Validations::AbsenceValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end

class ActiveModel::Validations::AcceptanceValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def validate_each(record, attribute, value); end

  private

  def acceptable_option?(value); end
  def setup!(klass); end
end

class ActiveModel::Validations::AcceptanceValidator::LazilyDefineAttributes < ::Module
  def initialize(attributes); end

  def ==(other); end
  def define_on(klass); end
  def included(klass); end
  def matches?(method_name); end

  protected

  def attributes; end
end

module ActiveModel::Validations::Callbacks
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Validations::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker

  private

  def run_validations!; end

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
  end
end

module ActiveModel::Validations::Callbacks::ClassMethods
  def after_validation(*args, &block); end
  def before_validation(*args, &block); end

  private

  def set_options_for_callback(options); end
end

module ActiveModel::Validations::ClassMethods
  def attribute_method?(attribute); end
  def clear_validators!; end
  def inherited(base); end
  def validate(*args, &block); end
  def validates(*attributes); end
  def validates!(*attributes); end
  def validates_each(*attr_names, &block); end
  def validates_with(*args, &block); end
  def validators; end
  def validators_on(*attributes); end

  private

  def _parse_validates_options(options); end
  def _validates_default_keys; end
end

ActiveModel::Validations::ClassMethods::VALID_OPTIONS_FOR_VALIDATE = T.let(T.unsafe(nil), Array)

module ActiveModel::Validations::Clusivity
  def check_validity!; end

  private

  def delimiter; end
  def include?(record, value); end
  def inclusion_method(enumerable); end
end

ActiveModel::Validations::Clusivity::ERROR_MESSAGE = T.let(T.unsafe(nil), String)

module ActiveModel::Validations::Comparability
  def error_options(value, option_value); end
  def option_value(record, option_value); end
end

ActiveModel::Validations::Comparability::COMPARE_CHECKS = T.let(T.unsafe(nil), Hash)

class ActiveModel::Validations::ComparisonValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Comparability

  def check_validity!; end
  def validate_each(record, attr_name, value); end
end

class ActiveModel::Validations::ConfirmationValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def validate_each(record, attribute, value); end

  private

  def confirmation_value_equal?(record, attribute, value, confirmed); end
  def setup!(klass); end
end

class ActiveModel::Validations::ExclusionValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Clusivity

  def validate_each(record, attribute, value); end
end

class ActiveModel::Validations::FormatValidator < ::ActiveModel::EachValidator
  def check_validity!; end
  def validate_each(record, attribute, value); end

  private

  def check_options_validity(name); end
  def option_call(record, name); end
  def record_error(record, attribute, name, value); end
  def regexp_using_multiline_anchors?(regexp); end
end

module ActiveModel::Validations::HelperMethods
  def validates_absence_of(*attr_names); end
  def validates_acceptance_of(*attr_names); end
  def validates_comparison_of(*attr_names); end
  def validates_confirmation_of(*attr_names); end
  def validates_exclusion_of(*attr_names); end
  def validates_format_of(*attr_names); end
  def validates_inclusion_of(*attr_names); end
  def validates_length_of(*attr_names); end
  def validates_numericality_of(*attr_names); end
  def validates_presence_of(*attr_names); end
  def validates_size_of(*attr_names); end

  private

  def _merge_attributes(attr_names); end
end

class ActiveModel::Validations::InclusionValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Clusivity

  def validate_each(record, attribute, value); end
end

class ActiveModel::Validations::LengthValidator < ::ActiveModel::EachValidator
  def initialize(options); end

  def check_validity!; end
  def validate_each(record, attribute, value); end

  private

  def skip_nil_check?(key); end
end

ActiveModel::Validations::LengthValidator::CHECKS = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::LengthValidator::MESSAGES = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::LengthValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Validations::NumericalityValidator < ::ActiveModel::EachValidator
  include ::ActiveModel::Validations::Comparability

  def check_validity!; end
  def validate_each(record, attr_name, value, precision: T.unsafe(nil), scale: T.unsafe(nil)); end

  private

  def allow_only_integer?(record); end
  def filtered_options(value); end
  def is_hexadecimal_literal?(raw_value); end
  def is_integer?(raw_value); end
  def is_number?(raw_value, precision, scale); end
  def option_as_number(record, option_value, precision, scale); end
  def parse_as_number(raw_value, precision, scale); end
  def parse_float(raw_value, precision, scale); end
  def prepare_value_for_validation(value, record, attr_name); end
  def record_attribute_changed_in_place?(record, attr_name); end
  def round(raw_value, scale); end
end

ActiveModel::Validations::NumericalityValidator::HEXADECIMAL_REGEX = T.let(T.unsafe(nil), Regexp)
ActiveModel::Validations::NumericalityValidator::INTEGER_REGEX = T.let(T.unsafe(nil), Regexp)
ActiveModel::Validations::NumericalityValidator::NUMBER_CHECKS = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::NumericalityValidator::RANGE_CHECKS = T.let(T.unsafe(nil), Hash)
ActiveModel::Validations::NumericalityValidator::RESERVED_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Validations::PresenceValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr_name, value); end
end

class ActiveModel::Validations::WithValidator < ::ActiveModel::EachValidator
  def validate_each(record, attr, val); end
end

class ActiveModel::Validator
  def initialize(options = T.unsafe(nil)); end

  def kind; end
  def options; end
  def validate(record); end

  class << self
    def kind; end
  end
end
