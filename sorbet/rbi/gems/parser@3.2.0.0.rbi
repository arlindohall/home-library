# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `parser` gem.
# Please instead update this file by running `bin/tapioca gem parser`.

module Parser; end
module Parser::AST; end

class Parser::AST::Node < ::AST::Node
  def assign_properties(properties); end
  def loc; end
  def location; end
end

class Parser::AST::Processor < ::AST::Processor
  def on_alias(node); end
  def on_and(node); end
  def on_and_asgn(node); end
  def on_arg(node); end
  def on_arg_expr(node); end
  def on_args(node); end
  def on_argument(node); end
  def on_array(node); end
  def on_array_pattern(node); end
  def on_array_pattern_with_tail(node); end
  def on_back_ref(node); end
  def on_begin(node); end
  def on_block(node); end
  def on_block_pass(node); end
  def on_blockarg(node); end
  def on_blockarg_expr(node); end
  def on_break(node); end
  def on_case(node); end
  def on_case_match(node); end
  def on_casgn(node); end
  def on_class(node); end
  def on_const(node); end
  def on_const_pattern(node); end
  def on_csend(node); end
  def on_cvar(node); end
  def on_cvasgn(node); end
  def on_def(node); end
  def on_defined?(node); end
  def on_defs(node); end
  def on_dstr(node); end
  def on_dsym(node); end
  def on_eflipflop(node); end
  def on_empty_else(node); end
  def on_ensure(node); end
  def on_erange(node); end
  def on_find_pattern(node); end
  def on_for(node); end
  def on_forward_arg(node); end
  def on_forwarded_kwrestarg(node); end
  def on_forwarded_restarg(node); end
  def on_gvar(node); end
  def on_gvasgn(node); end
  def on_hash(node); end
  def on_hash_pattern(node); end
  def on_if(node); end
  def on_if_guard(node); end
  def on_iflipflop(node); end
  def on_in_match(node); end
  def on_in_pattern(node); end
  def on_index(node); end
  def on_indexasgn(node); end
  def on_irange(node); end
  def on_ivar(node); end
  def on_ivasgn(node); end
  def on_kwarg(node); end
  def on_kwargs(node); end
  def on_kwbegin(node); end
  def on_kwoptarg(node); end
  def on_kwrestarg(node); end
  def on_kwsplat(node); end
  def on_lambda(node); end
  def on_lvar(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_match_alt(node); end
  def on_match_as(node); end
  def on_match_current_line(node); end
  def on_match_pattern(node); end
  def on_match_pattern_p(node); end
  def on_match_rest(node); end
  def on_match_var(node); end
  def on_match_with_lvasgn(node); end
  def on_mlhs(node); end
  def on_module(node); end
  def on_next(node); end
  def on_not(node); end
  def on_nth_ref(node); end
  def on_numblock(node); end
  def on_op_asgn(node); end
  def on_optarg(node); end
  def on_or(node); end
  def on_or_asgn(node); end
  def on_pair(node); end
  def on_pin(node); end
  def on_postexe(node); end
  def on_preexe(node); end
  def on_procarg0(node); end
  def on_redo(node); end
  def on_regexp(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_restarg(node); end
  def on_restarg_expr(node); end
  def on_retry(node); end
  def on_return(node); end
  def on_sclass(node); end
  def on_send(node); end
  def on_shadowarg(node); end
  def on_splat(node); end
  def on_super(node); end
  def on_undef(node); end
  def on_unless_guard(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_var(node); end
  def on_vasgn(node); end
  def on_when(node); end
  def on_while(node); end
  def on_while_post(node); end
  def on_xstr(node); end
  def on_yield(node); end
  def process_argument_node(node); end
  def process_regular_node(node); end
  def process_var_asgn_node(node); end
  def process_variable_node(node); end
end

class Parser::Base < ::Racc::Parser
  def initialize(builder = T.unsafe(nil)); end

  def builder; end
  def context; end
  def current_arg_stack; end
  def diagnostics; end
  def lexer; end
  def max_numparam_stack; end
  def parse(source_buffer); end
  def parse_with_comments(source_buffer); end
  def pattern_hash_keys; end
  def pattern_variables; end
  def reset; end
  def source_buffer; end
  def static_env; end
  def tokenize(source_buffer, recover = T.unsafe(nil)); end

  private

  def check_kwarg_name(name_t); end
  def diagnostic(level, reason, arguments, location_t, highlights_ts = T.unsafe(nil)); end
  def next_token; end
  def on_error(error_token_id, error_value, value_stack); end

  class << self
    def default_parser; end
    def parse(string, file = T.unsafe(nil), line = T.unsafe(nil)); end
    def parse_file(filename); end
    def parse_file_with_comments(filename); end
    def parse_with_comments(string, file = T.unsafe(nil), line = T.unsafe(nil)); end

    private

    def setup_source_buffer(file, line, string, encoding); end
  end
end

module Parser::Builders; end

class Parser::Builders::Default
  def initialize; end

  def __ENCODING__(__ENCODING__t); end
  def __FILE__(__FILE__t); end
  def __LINE__(__LINE__t); end
  def accessible(node); end
  def alias(alias_t, to, from); end
  def arg(name_t); end
  def arg_expr(expr); end
  def args(begin_t, args, end_t, check_args = T.unsafe(nil)); end
  def array(begin_t, elements, end_t); end
  def array_pattern(lbrack_t, elements, rbrack_t); end
  def assign(lhs, eql_t, rhs); end
  def assignable(node); end
  def associate(begin_t, pairs, end_t); end
  def attr_asgn(receiver, dot_t, selector_t); end
  def back_ref(token); end
  def begin(begin_t, body, end_t); end
  def begin_body(compound_stmt, rescue_bodies = T.unsafe(nil), else_t = T.unsafe(nil), else_ = T.unsafe(nil), ensure_t = T.unsafe(nil), ensure_ = T.unsafe(nil)); end
  def begin_keyword(begin_t, body, end_t); end
  def binary_op(receiver, operator_t, arg); end
  def block(method_call, begin_t, args, body, end_t); end
  def block_pass(amper_t, arg); end
  def blockarg(amper_t, name_t); end
  def blockarg_expr(amper_t, expr); end
  def call_lambda(lambda_t); end
  def call_method(receiver, dot_t, selector_t, lparen_t = T.unsafe(nil), args = T.unsafe(nil), rparen_t = T.unsafe(nil)); end
  def call_type_for_dot(dot_t); end
  def case(case_t, expr, when_bodies, else_t, else_body, end_t); end
  def case_match(case_t, expr, in_bodies, else_t, else_body, end_t); end
  def character(char_t); end
  def complex(complex_t); end
  def compstmt(statements); end
  def condition(cond_t, cond, then_t, if_true, else_t, if_false, end_t); end
  def condition_mod(if_true, if_false, cond_t, cond); end
  def const(name_t); end
  def const_fetch(scope, t_colon2, name_t); end
  def const_global(t_colon3, name_t); end
  def const_op_assignable(node); end
  def const_pattern(const, ldelim_t, pattern, rdelim_t); end
  def cvar(token); end
  def dedent_string(node, dedent_level); end
  def def_class(class_t, name, lt_t, superclass, body, end_t); end
  def def_endless_method(def_t, name_t, args, assignment_t, body); end
  def def_endless_singleton(def_t, definee, dot_t, name_t, args, assignment_t, body); end
  def def_method(def_t, name_t, args, body, end_t); end
  def def_module(module_t, name, body, end_t); end
  def def_sclass(class_t, lshft_t, expr, body, end_t); end
  def def_singleton(def_t, definee, dot_t, name_t, args, body, end_t); end
  def emit_file_line_as_literals; end
  def emit_file_line_as_literals=(_arg0); end
  def false(false_t); end
  def find_pattern(lbrack_t, elements, rbrack_t); end
  def float(float_t); end
  def for(for_t, iterator, in_t, iteratee, do_t, body, end_t); end
  def forward_arg(dots_t); end
  def forward_only_args(begin_t, dots_t, end_t); end
  def forwarded_args(dots_t); end
  def forwarded_kwrestarg(dstar_t); end
  def forwarded_restarg(star_t); end
  def gvar(token); end
  def hash_pattern(lbrace_t, kwargs, rbrace_t); end
  def ident(token); end
  def if_guard(if_t, if_body); end
  def in_match(lhs, in_t, rhs); end
  def in_pattern(in_t, pattern, guard, then_t, body); end
  def index(receiver, lbrack_t, indexes, rbrack_t); end
  def index_asgn(receiver, lbrack_t, indexes, rbrack_t); end
  def integer(integer_t); end
  def ivar(token); end
  def keyword_cmd(type, keyword_t, lparen_t = T.unsafe(nil), args = T.unsafe(nil), rparen_t = T.unsafe(nil)); end
  def kwarg(name_t); end
  def kwnilarg(dstar_t, nil_t); end
  def kwoptarg(name_t, value); end
  def kwrestarg(dstar_t, name_t = T.unsafe(nil)); end
  def kwsplat(dstar_t, arg); end
  def logical_op(type, lhs, op_t, rhs); end
  def loop(type, keyword_t, cond, do_t, body, end_t); end
  def loop_mod(type, body, keyword_t, cond); end
  def match_alt(left, pipe_t, right); end
  def match_as(value, assoc_t, as); end
  def match_hash_var(name_t); end
  def match_hash_var_from_str(begin_t, strings, end_t); end
  def match_label(label_type, label); end
  def match_nil_pattern(dstar_t, nil_t); end
  def match_op(receiver, match_t, arg); end
  def match_pair(label_type, label, value); end
  def match_pattern(lhs, match_t, rhs); end
  def match_pattern_p(lhs, match_t, rhs); end
  def match_rest(star_t, name_t = T.unsafe(nil)); end
  def match_var(name_t); end
  def match_with_trailing_comma(match, comma_t); end
  def multi_assign(lhs, eql_t, rhs); end
  def multi_lhs(begin_t, items, end_t); end
  def nil(nil_t); end
  def not_op(not_t, begin_t = T.unsafe(nil), receiver = T.unsafe(nil), end_t = T.unsafe(nil)); end
  def nth_ref(token); end
  def numargs(max_numparam); end
  def objc_kwarg(kwname_t, assoc_t, name_t); end
  def objc_restarg(star_t, name = T.unsafe(nil)); end
  def objc_varargs(pair, rest_of_varargs); end
  def op_assign(lhs, op_t, rhs); end
  def optarg(name_t, eql_t, value); end
  def pair(key, assoc_t, value); end
  def pair_keyword(key_t, value); end
  def pair_label(key_t); end
  def pair_list_18(list); end
  def pair_quoted(begin_t, parts, end_t, value); end
  def parser; end
  def parser=(_arg0); end
  def pin(pin_t, var); end
  def postexe(postexe_t, lbrace_t, compstmt, rbrace_t); end
  def preexe(preexe_t, lbrace_t, compstmt, rbrace_t); end
  def procarg0(arg); end
  def range_exclusive(lhs, dot3_t, rhs); end
  def range_inclusive(lhs, dot2_t, rhs); end
  def rational(rational_t); end
  def regexp_compose(begin_t, parts, end_t, options); end
  def regexp_options(regopt_t); end
  def rescue_body(rescue_t, exc_list, assoc_t, exc_var, then_t, compound_stmt); end
  def restarg(star_t, name_t = T.unsafe(nil)); end
  def restarg_expr(star_t, expr = T.unsafe(nil)); end
  def self(token); end
  def shadowarg(name_t); end
  def splat(star_t, arg = T.unsafe(nil)); end
  def string(string_t); end
  def string_compose(begin_t, parts, end_t); end
  def string_internal(string_t); end
  def symbol(symbol_t); end
  def symbol_compose(begin_t, parts, end_t); end
  def symbol_internal(symbol_t); end
  def symbols_compose(begin_t, parts, end_t); end
  def ternary(cond, question_t, if_true, colon_t, if_false); end
  def true(true_t); end
  def unary_num(unary_t, numeric); end
  def unary_op(op_t, receiver); end
  def undef_method(undef_t, names); end
  def unless_guard(unless_t, unless_body); end
  def when(when_t, patterns, then_t, body); end
  def word(parts); end
  def words_compose(begin_t, parts, end_t); end
  def xstring_compose(begin_t, parts, end_t); end

  private

  def arg_name_collides?(this_name, that_name); end
  def arg_prefix_map(op_t, name_t = T.unsafe(nil)); end
  def binary_op_map(left_e, op_t, right_e); end
  def block_map(receiver_l, begin_t, end_t); end
  def check_assignment_to_numparam(name, loc); end
  def check_condition(cond); end
  def check_duplicate_arg(this_arg, map = T.unsafe(nil)); end
  def check_duplicate_args(args, map = T.unsafe(nil)); end
  def check_duplicate_pattern_key(name, loc); end
  def check_duplicate_pattern_variable(name, loc); end
  def check_lvar_name(name, loc); end
  def check_reserved_for_numparam(name, loc); end
  def collapse_string_parts?(parts); end
  def collection_map(begin_t, parts, end_t); end
  def condition_map(keyword_t, cond_e, begin_t, body_e, else_t, else_e, end_t); end
  def constant_map(scope, colon2_t, name_t); end
  def definition_map(keyword_t, operator_t, name_t, end_t); end
  def delimited_string_map(string_t); end
  def diagnostic(type, reason, arguments, location, highlights = T.unsafe(nil)); end
  def eh_keyword_map(compstmt_e, keyword_t, body_es, else_t, else_e); end
  def endless_definition_map(keyword_t, operator_t, name_t, assignment_t, body_e); end
  def expr_map(loc); end
  def for_map(keyword_t, in_t, begin_t, end_t); end
  def guard_map(keyword_t, guard_body_e); end
  def index_map(receiver_e, lbrack_t, rbrack_t); end
  def join_exprs(left_expr, right_expr); end
  def keyword_map(keyword_t, begin_t, args, end_t); end
  def keyword_mod_map(pre_e, keyword_t, post_e); end
  def kwarg_map(name_t, value_e = T.unsafe(nil)); end
  def kwargs?(node); end
  def loc(token); end
  def module_definition_map(keyword_t, name_e, operator_t, end_t); end
  def n(type, children, source_map); end
  def n0(type, source_map); end
  def numeric(kind, token); end
  def pair_keyword_map(key_t, value_e); end
  def pair_quoted_map(begin_t, end_t, value_e); end
  def prefix_string_map(symbol); end
  def range_map(start_e, op_t, end_e); end
  def regexp_map(begin_t, end_t, options_e); end
  def rescue_body_map(keyword_t, exc_list_e, assoc_t, exc_var_e, then_t, compstmt_e); end
  def rewrite_hash_args_to_kwargs(args); end
  def send_binary_op_map(lhs_e, selector_t, rhs_e); end
  def send_index_map(receiver_e, lbrack_t, rbrack_t); end
  def send_map(receiver_e, dot_t, selector_t, begin_t = T.unsafe(nil), args = T.unsafe(nil), end_t = T.unsafe(nil)); end
  def send_unary_op_map(selector_t, arg_e); end
  def static_regexp(parts, options); end
  def static_regexp_node(node); end
  def static_string(nodes); end
  def string_map(begin_t, parts, end_t); end
  def string_value(token); end
  def ternary_map(begin_e, question_t, mid_e, colon_t, end_e); end
  def token_map(token); end
  def unary_op_map(op_t, arg_e = T.unsafe(nil)); end
  def unquoted_map(token); end
  def validate_definee(definee); end
  def validate_no_forward_arg_after_restarg(args); end
  def value(token); end
  def var_send_map(variable_e); end
  def variable_map(name_t); end

  class << self
    def emit_arg_inside_procarg0; end
    def emit_arg_inside_procarg0=(_arg0); end
    def emit_encoding; end
    def emit_encoding=(_arg0); end
    def emit_forward_arg; end
    def emit_forward_arg=(_arg0); end
    def emit_index; end
    def emit_index=(_arg0); end
    def emit_kwargs; end
    def emit_kwargs=(_arg0); end
    def emit_lambda; end
    def emit_lambda=(_arg0); end
    def emit_match_pattern; end
    def emit_match_pattern=(_arg0); end
    def emit_procarg0; end
    def emit_procarg0=(_arg0); end
    def modernize; end
  end
end

class Parser::ClobberingError < ::RuntimeError; end

class Parser::Context
  def initialize; end

  def in_argdef; end
  def in_argdef=(_arg0); end
  def in_block; end
  def in_block=(_arg0); end
  def in_class; end
  def in_class=(_arg0); end
  def in_def; end
  def in_def=(_arg0); end
  def in_defined; end
  def in_defined=(_arg0); end
  def in_dynamic_block?; end
  def in_kwarg; end
  def in_kwarg=(_arg0); end
  def in_lambda; end
  def in_lambda=(_arg0); end
  def reset; end
end

Parser::Context::FLAGS = T.let(T.unsafe(nil), Array)

class Parser::CurrentArgStack
  def initialize; end

  def empty?; end
  def pop; end
  def push(value); end
  def reset; end
  def set(value); end
  def stack; end
  def top; end
end

module Parser::Deprecation
  def warn_of_deprecation; end
  def warned_of_deprecation=(_arg0); end
end

class Parser::Diagnostic
  def initialize(level, reason, arguments, location, highlights = T.unsafe(nil)); end

  def arguments; end
  def highlights; end
  def level; end
  def location; end
  def message; end
  def reason; end
  def render; end

  private

  def first_line_only(range); end
  def last_line_only(range); end
  def render_line(range, ellipsis = T.unsafe(nil), range_end = T.unsafe(nil)); end
end

class Parser::Diagnostic::Engine
  def initialize(consumer = T.unsafe(nil)); end

  def all_errors_are_fatal; end
  def all_errors_are_fatal=(_arg0); end
  def consumer; end
  def consumer=(_arg0); end
  def ignore_warnings; end
  def ignore_warnings=(_arg0); end
  def process(diagnostic); end

  protected

  def ignore?(diagnostic); end
  def raise?(diagnostic); end
end

Parser::Diagnostic::LEVELS = T.let(T.unsafe(nil), Array)

class Parser::Lexer
  def initialize(version); end

  def advance; end
  def cmdarg; end
  def cmdarg=(_arg0); end
  def cmdarg_stack; end
  def command_start; end
  def command_start=(_arg0); end
  def comments; end
  def comments=(_arg0); end
  def cond; end
  def cond=(_arg0); end
  def cond_stack; end
  def context; end
  def context=(_arg0); end
  def dedent_level; end
  def diagnostics; end
  def diagnostics=(_arg0); end
  def encoding; end
  def force_utf32; end
  def force_utf32=(_arg0); end
  def lambda_stack; end
  def paren_nest; end
  def pop_cmdarg; end
  def pop_cond; end
  def push_cmdarg; end
  def push_cond; end
  def reset(reset_state = T.unsafe(nil)); end
  def source_buffer; end
  def source_buffer=(source_buffer); end
  def state; end
  def state=(state); end
  def static_env; end
  def static_env=(_arg0); end
  def tokens; end
  def tokens=(_arg0); end
  def version; end

  protected

  def arg_or_cmdarg(cmd_state); end
  def check_ambiguous_slash(tm); end
  def check_invalid_escapes(p); end
  def diagnostic(type, reason, arguments = T.unsafe(nil), location = T.unsafe(nil), highlights = T.unsafe(nil)); end
  def e_heredoc_nl(p); end
  def e_lbrace; end
  def emit(type, value = T.unsafe(nil), s = T.unsafe(nil), e = T.unsafe(nil)); end
  def emit_character_constant; end
  def emit_colon_with_digits(p, tm, diag_msg); end
  def emit_comment(s = T.unsafe(nil), e = T.unsafe(nil)); end
  def emit_comment_from_range(p, pe); end
  def emit_do(do_block = T.unsafe(nil)); end
  def emit_global_var; end
  def emit_invalid_escapes?; end
  def emit_rbrace_rparen_rbrack; end
  def emit_singleton_class; end
  def emit_table(table, s = T.unsafe(nil), e = T.unsafe(nil)); end
  def encode_escape(ord); end
  def encode_escaped_char(p); end
  def eof_codepoint?(point); end
  def extend_interp_code(current_literal); end
  def extend_interp_digit_var; end
  def extend_interp_var(current_literal); end
  def extend_string_eol_check_eof(current_literal, pe); end
  def extend_string_eol_heredoc_intertwined(p); end
  def extend_string_eol_heredoc_line; end
  def extend_string_eol_words(current_literal, p); end
  def extend_string_escaped; end
  def extend_string_for_token_range(current_literal, string); end
  def extend_string_slice_end(lookahead); end
  def literal; end
  def next_state_for_literal(literal); end
  def numeric_literal_int; end
  def pop_literal; end
  def push_literal(*args); end
  def range(s = T.unsafe(nil), e = T.unsafe(nil)); end
  def read_post_meta_or_ctrl_char(p); end
  def slash_c_char; end
  def slash_m_char; end
  def stack_pop; end
  def tok(s = T.unsafe(nil), e = T.unsafe(nil)); end
  def unescape_char(p); end
  def unicode_points(p); end
  def version?(*versions); end

  class << self
    def lex_en_expr_arg; end
    def lex_en_expr_arg=(_arg0); end
    def lex_en_expr_beg; end
    def lex_en_expr_beg=(_arg0); end
    def lex_en_expr_cmdarg; end
    def lex_en_expr_cmdarg=(_arg0); end
    def lex_en_expr_dot; end
    def lex_en_expr_dot=(_arg0); end
    def lex_en_expr_end; end
    def lex_en_expr_end=(_arg0); end
    def lex_en_expr_endarg; end
    def lex_en_expr_endarg=(_arg0); end
    def lex_en_expr_endfn; end
    def lex_en_expr_endfn=(_arg0); end
    def lex_en_expr_fname; end
    def lex_en_expr_fname=(_arg0); end
    def lex_en_expr_labelarg; end
    def lex_en_expr_labelarg=(_arg0); end
    def lex_en_expr_mid; end
    def lex_en_expr_mid=(_arg0); end
    def lex_en_expr_value; end
    def lex_en_expr_value=(_arg0); end
    def lex_en_expr_variable; end
    def lex_en_expr_variable=(_arg0); end
    def lex_en_interp_backslash_delimited; end
    def lex_en_interp_backslash_delimited=(_arg0); end
    def lex_en_interp_backslash_delimited_words; end
    def lex_en_interp_backslash_delimited_words=(_arg0); end
    def lex_en_interp_string; end
    def lex_en_interp_string=(_arg0); end
    def lex_en_interp_words; end
    def lex_en_interp_words=(_arg0); end
    def lex_en_leading_dot; end
    def lex_en_leading_dot=(_arg0); end
    def lex_en_line_begin; end
    def lex_en_line_begin=(_arg0); end
    def lex_en_line_comment; end
    def lex_en_line_comment=(_arg0); end
    def lex_en_plain_backslash_delimited; end
    def lex_en_plain_backslash_delimited=(_arg0); end
    def lex_en_plain_backslash_delimited_words; end
    def lex_en_plain_backslash_delimited_words=(_arg0); end
    def lex_en_plain_string; end
    def lex_en_plain_string=(_arg0); end
    def lex_en_plain_words; end
    def lex_en_plain_words=(_arg0); end
    def lex_en_regexp_modifiers; end
    def lex_en_regexp_modifiers=(_arg0); end
    def lex_error; end
    def lex_error=(_arg0); end
    def lex_start; end
    def lex_start=(_arg0); end

    private

    def _lex_eof_trans; end
    def _lex_eof_trans=(_arg0); end
    def _lex_from_state_actions; end
    def _lex_from_state_actions=(_arg0); end
    def _lex_index_offsets; end
    def _lex_index_offsets=(_arg0); end
    def _lex_indicies; end
    def _lex_indicies=(_arg0); end
    def _lex_key_spans; end
    def _lex_key_spans=(_arg0); end
    def _lex_to_state_actions; end
    def _lex_to_state_actions=(_arg0); end
    def _lex_trans_actions; end
    def _lex_trans_actions=(_arg0); end
    def _lex_trans_keys; end
    def _lex_trans_keys=(_arg0); end
    def _lex_trans_targs; end
    def _lex_trans_targs=(_arg0); end
  end
end

class Parser::Lexer::Dedenter
  def initialize(dedent_level); end

  def dedent(string); end
  def interrupt; end
end

Parser::Lexer::Dedenter::TAB_WIDTH = T.let(T.unsafe(nil), Integer)
Parser::Lexer::ESCAPES = T.let(T.unsafe(nil), Hash)
Parser::Lexer::ESCAPE_WHITESPACE = T.let(T.unsafe(nil), Hash)
Parser::Lexer::KEYWORDS = T.let(T.unsafe(nil), Hash)
Parser::Lexer::KEYWORDS_BEGIN = T.let(T.unsafe(nil), Hash)
Parser::Lexer::LEX_STATES = T.let(T.unsafe(nil), Hash)

class Parser::Lexer::Literal
  def initialize(lexer, str_type, delimiter, str_s, heredoc_e = T.unsafe(nil), indent = T.unsafe(nil), dedent_body = T.unsafe(nil), label_allowed = T.unsafe(nil)); end

  def backslash_delimited?; end
  def dedent_level; end
  def end_interp_brace_and_try_closing; end
  def extend_content; end
  def extend_space(ts, te); end
  def extend_string(string, ts, te); end
  def flush_string; end
  def heredoc?; end
  def heredoc_e; end
  def infer_indent_level(line); end
  def interpolate?; end
  def munge_escape?(character); end
  def nest_and_try_closing(delimiter, ts, te, lookahead = T.unsafe(nil)); end
  def plain_heredoc?; end
  def regexp?; end
  def saved_herebody_s; end
  def saved_herebody_s=(_arg0); end
  def squiggly_heredoc?; end
  def start_interp_brace; end
  def str_s; end
  def supports_line_continuation_via_slash?; end
  def type; end
  def words?; end

  protected

  def clear_buffer; end
  def coerce_encoding(string); end
  def delimiter?(delimiter); end
  def emit(token, type, s, e); end
  def emit_start_tok; end
end

Parser::Lexer::Literal::DELIMITERS = T.let(T.unsafe(nil), Hash)
Parser::Lexer::Literal::TYPES = T.let(T.unsafe(nil), Hash)
Parser::Lexer::PUNCTUATION = T.let(T.unsafe(nil), Hash)
Parser::Lexer::PUNCTUATION_BEGIN = T.let(T.unsafe(nil), Hash)
Parser::Lexer::REGEXP_META_CHARACTERS = T.let(T.unsafe(nil), Regexp)

class Parser::Lexer::StackState
  def initialize(name); end

  def active?; end
  def clear; end
  def empty?; end
  def inspect; end
  def lexpop; end
  def pop; end
  def push(bit); end
  def to_s; end
end

Parser::MESSAGES = T.let(T.unsafe(nil), Hash)

class Parser::MaxNumparamStack
  def initialize; end

  def empty?; end
  def has_numparams?; end
  def has_ordinary_params!; end
  def has_ordinary_params?; end
  def pop; end
  def push(static:); end
  def register(numparam); end
  def stack; end
  def top; end

  private

  def set(value); end
end

Parser::MaxNumparamStack::ORDINARY_PARAMS = T.let(T.unsafe(nil), Integer)

module Parser::Messages
  class << self
    def compile(reason, arguments); end
  end
end

module Parser::Meta; end
Parser::Meta::NODE_TYPES = T.let(T.unsafe(nil), Set)

class Parser::Rewriter < ::Parser::AST::Processor
  extend ::Parser::Deprecation

  def initialize(*_arg0); end

  def assignment?(node); end
  def insert_after(range, content); end
  def insert_before(range, content); end
  def remove(range); end
  def replace(range, content); end
  def rewrite(source_buffer, ast); end
  def wrap(range, before, after); end
end

Parser::Rewriter::DEPRECATION_WARNING = T.let(T.unsafe(nil), String)
module Parser::Source; end

class Parser::Source::Buffer
  def initialize(name, first_line = T.unsafe(nil), source: T.unsafe(nil)); end

  def column_for_position(position); end
  def decompose_position(position); end
  def first_line; end
  def freeze; end
  def inspect; end
  def last_line; end
  def line_for_position(position); end
  def line_range(lineno); end
  def name; end
  def raw_source=(input); end
  def read; end
  def slice(start, length = T.unsafe(nil)); end
  def source; end
  def source=(input); end
  def source_line(lineno); end
  def source_lines; end
  def source_range; end

  private

  def bsearch(line_begins, position); end
  def line_begins; end
  def line_index_for_position(position); end

  class << self
    def recognize_encoding(string); end
    def reencode_string(input); end
  end
end

Parser::Source::Buffer::ENCODING_RE = T.let(T.unsafe(nil), Regexp)

class Parser::Source::Comment
  def initialize(range); end

  def ==(other); end
  def document?; end
  def inline?; end
  def inspect; end
  def loc; end
  def location; end
  def text; end
  def type; end

  class << self
    def associate(ast, comments); end
    def associate_by_identity(ast, comments); end
    def associate_locations(ast, comments); end
  end
end

class Parser::Source::Comment::Associator
  def initialize(ast, comments); end

  def associate; end
  def associate_by_identity; end
  def associate_locations; end
  def skip_directives; end
  def skip_directives=(_arg0); end

  private

  def advance_comment; end
  def advance_through_directives; end
  def associate_and_advance_comment(node); end
  def children_in_source_order(node); end
  def current_comment_before?(node); end
  def current_comment_before_end?(node); end
  def current_comment_decorates?(node); end
  def do_associate; end
  def process_leading_comments(node); end
  def process_trailing_comments(node); end
  def visit(node); end
end

Parser::Source::Comment::Associator::MAGIC_COMMENT_RE = T.let(T.unsafe(nil), Regexp)
Parser::Source::Comment::Associator::POSTFIX_TYPES = T.let(T.unsafe(nil), Set)

class Parser::Source::Map
  def initialize(expression); end

  def ==(other); end
  def column; end
  def expression; end
  def first_line; end
  def last_column; end
  def last_line; end
  def line; end
  def node; end
  def node=(node); end
  def to_hash; end
  def with_expression(expression_l); end

  protected

  def update_expression(expression_l); end
  def with(&block); end

  private

  def initialize_copy(other); end
end

class Parser::Source::Map::Collection < ::Parser::Source::Map
  def initialize(begin_l, end_l, expression_l); end

  def begin; end
  def end; end
end

class Parser::Source::Map::Condition < ::Parser::Source::Map
  def initialize(keyword_l, begin_l, else_l, end_l, expression_l); end

  def begin; end
  def else; end
  def end; end
  def keyword; end
end

class Parser::Source::Map::Constant < ::Parser::Source::Map
  def initialize(double_colon, name, expression); end

  def double_colon; end
  def name; end
  def operator; end
  def with_operator(operator_l); end

  protected

  def update_operator(operator_l); end
end

class Parser::Source::Map::Definition < ::Parser::Source::Map
  def initialize(keyword_l, operator_l, name_l, end_l); end

  def end; end
  def keyword; end
  def name; end
  def operator; end
end

class Parser::Source::Map::For < ::Parser::Source::Map
  def initialize(keyword_l, in_l, begin_l, end_l, expression_l); end

  def begin; end
  def end; end
  def in; end
  def keyword; end
end

class Parser::Source::Map::Heredoc < ::Parser::Source::Map
  def initialize(begin_l, body_l, end_l); end

  def heredoc_body; end
  def heredoc_end; end
end

class Parser::Source::Map::Index < ::Parser::Source::Map
  def initialize(begin_l, end_l, expression_l); end

  def begin; end
  def end; end
  def operator; end
  def with_operator(operator_l); end

  protected

  def update_operator(operator_l); end
end

class Parser::Source::Map::Keyword < ::Parser::Source::Map
  def initialize(keyword_l, begin_l, end_l, expression_l); end

  def begin; end
  def end; end
  def keyword; end
end

class Parser::Source::Map::MethodDefinition < ::Parser::Source::Map
  def initialize(keyword_l, operator_l, name_l, end_l, assignment_l, body_l); end

  def assignment; end
  def end; end
  def keyword; end
  def name; end
  def operator; end
end

class Parser::Source::Map::ObjcKwarg < ::Parser::Source::Map
  def initialize(keyword_l, operator_l, argument_l, expression_l); end

  def argument; end
  def keyword; end
  def operator; end
end

class Parser::Source::Map::Operator < ::Parser::Source::Map
  def initialize(operator, expression); end

  def operator; end
end

class Parser::Source::Map::RescueBody < ::Parser::Source::Map
  def initialize(keyword_l, assoc_l, begin_l, expression_l); end

  def assoc; end
  def begin; end
  def keyword; end
end

class Parser::Source::Map::Send < ::Parser::Source::Map
  def initialize(dot_l, selector_l, begin_l, end_l, expression_l); end

  def begin; end
  def dot; end
  def end; end
  def operator; end
  def selector; end
  def with_operator(operator_l); end

  protected

  def update_operator(operator_l); end
end

class Parser::Source::Map::Ternary < ::Parser::Source::Map
  def initialize(question_l, colon_l, expression_l); end

  def colon; end
  def question; end
end

class Parser::Source::Map::Variable < ::Parser::Source::Map
  def initialize(name_l, expression_l = T.unsafe(nil)); end

  def name; end
  def operator; end
  def with_operator(operator_l); end

  protected

  def update_operator(operator_l); end
end

class Parser::Source::Range
  include ::Comparable

  def initialize(source_buffer, begin_pos, end_pos); end

  def <=>(other); end
  def adjust(begin_pos: T.unsafe(nil), end_pos: T.unsafe(nil)); end
  def begin; end
  def begin_pos; end
  def column; end
  def column_range; end
  def contained?(other); end
  def contains?(other); end
  def crossing?(other); end
  def disjoint?(other); end
  def empty?; end
  def end; end
  def end_pos; end
  def eql?(_arg0); end
  def first_line; end
  def hash; end
  def inspect; end
  def intersect(other); end
  def is?(*what); end
  def join(other); end
  def last_column; end
  def last_line; end
  def length; end
  def line; end
  def overlaps?(other); end
  def resize(new_size); end
  def size; end
  def source; end
  def source_buffer; end
  def source_line; end
  def to_a; end
  def to_range; end
  def to_s; end
  def with(begin_pos: T.unsafe(nil), end_pos: T.unsafe(nil)); end
end

class Parser::Source::Rewriter
  extend ::Parser::Deprecation

  def initialize(source_buffer); end

  def diagnostics; end
  def insert_after(range, content); end
  def insert_after_multi(range, content); end
  def insert_before(range, content); end
  def insert_before_multi(range, content); end
  def process; end
  def remove(range); end
  def replace(range, content); end
  def source_buffer; end
  def transaction; end
  def wrap(range, before, after); end

  private

  def active_clobber; end
  def active_clobber=(value); end
  def active_insertions; end
  def active_insertions=(value); end
  def active_queue; end
  def adjacent?(range1, range2); end
  def adjacent_insertion_mask(range); end
  def adjacent_insertions?(range); end
  def adjacent_position_mask(range); end
  def adjacent_updates?(range); end
  def append(action); end
  def can_merge?(action, existing); end
  def clobbered_insertion?(insertion); end
  def clobbered_position_mask(range); end
  def in_transaction?; end
  def merge_actions(action, existing); end
  def merge_actions!(action, existing); end
  def merge_replacements(actions); end
  def raise_clobber_error(action, existing); end
  def record_insertion(range); end
  def record_replace(range); end
  def replace_actions(old, updated); end
  def replace_compatible_with_insertion?(replace, insertion); end
end

class Parser::Source::Rewriter::Action
  include ::Comparable

  def initialize(range, replacement = T.unsafe(nil), allow_multiple_insertions = T.unsafe(nil), order = T.unsafe(nil)); end

  def <=>(other); end
  def allow_multiple_insertions; end
  def allow_multiple_insertions?; end
  def order; end
  def range; end
  def replacement; end
  def to_s; end
end

Parser::Source::Rewriter::DEPRECATION_WARNING = T.let(T.unsafe(nil), String)

class Parser::Source::TreeRewriter
  extend ::Parser::Deprecation

  def initialize(source_buffer, crossing_deletions: T.unsafe(nil), different_replacements: T.unsafe(nil), swallowed_insertions: T.unsafe(nil)); end

  def as_nested_actions; end
  def as_replacements; end
  def diagnostics; end
  def empty?; end
  def import!(foreign_rewriter, offset: T.unsafe(nil)); end
  def in_transaction?; end
  def insert_after(range, content); end
  def insert_after_multi(range, text); end
  def insert_before(range, content); end
  def insert_before_multi(range, text); end
  def inspect; end
  def merge(with); end
  def merge!(with); end
  def process; end
  def remove(range); end
  def replace(range, content); end
  def source_buffer; end
  def transaction; end
  def wrap(range, insert_before, insert_after); end

  protected

  def action_root; end

  private

  def action_summary; end
  def check_policy_validity; end
  def check_range_validity(range); end
  def combine(range, attributes); end
  def enforce_policy(event); end
  def trigger_policy(event, range: T.unsafe(nil), conflict: T.unsafe(nil), **arguments); end
end

Parser::Source::TreeRewriter::ACTIONS = T.let(T.unsafe(nil), Array)

class Parser::Source::TreeRewriter::Action
  def initialize(range, enforcer, insert_before: T.unsafe(nil), replacement: T.unsafe(nil), insert_after: T.unsafe(nil), children: T.unsafe(nil)); end

  def combine(action); end
  def contract; end
  def empty?; end
  def insert_after; end
  def insert_before; end
  def insertion?; end
  def moved(source_buffer, offset); end
  def nested_actions; end
  def ordered_replacements; end
  def range; end
  def replacement; end

  protected

  def analyse_hierarchy(action); end
  def bsearch_child_index(from = T.unsafe(nil)); end
  def call_enforcer_for_merge(action); end
  def check_fusible(action, *fusible); end
  def children; end
  def combine_children(more_children); end
  def do_combine(action); end
  def fuse_deletions(action, fusible, other_sibblings); end
  def merge(action); end
  def place_in_hierarchy(action); end
  def swallow(children); end
  def with(range: T.unsafe(nil), enforcer: T.unsafe(nil), children: T.unsafe(nil), insert_before: T.unsafe(nil), replacement: T.unsafe(nil), insert_after: T.unsafe(nil)); end
end

Parser::Source::TreeRewriter::DEPRECATION_WARNING = T.let(T.unsafe(nil), String)
Parser::Source::TreeRewriter::POLICY_TO_LEVEL = T.let(T.unsafe(nil), Hash)

class Parser::StaticEnvironment
  def initialize; end

  def declare(name); end
  def declare_anonymous_blockarg; end
  def declare_anonymous_kwrestarg; end
  def declare_anonymous_restarg; end
  def declare_forward_args; end
  def declared?(name); end
  def declared_anonymous_blockarg?; end
  def declared_anonymous_kwrestarg?; end
  def declared_anonymous_restarg?; end
  def declared_forward_args?; end
  def empty?; end
  def extend_dynamic; end
  def extend_static; end
  def reset; end
  def unextend; end
end

Parser::StaticEnvironment::ANONYMOUS_BLOCKARG = T.let(T.unsafe(nil), Symbol)
Parser::StaticEnvironment::ANONYMOUS_KWRESTARG = T.let(T.unsafe(nil), Symbol)
Parser::StaticEnvironment::ANONYMOUS_RESTARG = T.let(T.unsafe(nil), Symbol)
Parser::StaticEnvironment::FORWARD_ARGS = T.let(T.unsafe(nil), Symbol)

class Parser::SyntaxError < ::StandardError
  def initialize(diagnostic); end

  def diagnostic; end
end

class Parser::TreeRewriter < ::Parser::AST::Processor
  def assignment?(node); end
  def insert_after(range, content); end
  def insert_before(range, content); end
  def remove(range); end
  def replace(range, content); end
  def rewrite(source_buffer, ast, **policy); end
  def wrap(range, before, after); end
end

Parser::VERSION = T.let(T.unsafe(nil), String)

class Parser::VariablesStack
  def initialize; end

  def declare(name); end
  def declared?(name); end
  def empty?; end
  def pop; end
  def push; end
  def reset; end
end
