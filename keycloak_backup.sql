PGDMP  #                    }         
   keycloakdb    17.2 (Debian 17.2-1.pgdg120+1)    17.2 (Debian 17.2-1.pgdg120+1) �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16384 
   keycloakdb    DATABASE     u   CREATE DATABASE keycloakdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE keycloakdb;
                     keycloak    false            �            1259    17017    admin_event_entity    TABLE     
  CREATE TABLE public.admin_event_entity (
    id character varying(36) NOT NULL,
    admin_event_time bigint,
    realm_id character varying(255),
    operation_type character varying(255),
    auth_realm_id character varying(255),
    auth_client_id character varying(255),
    auth_user_id character varying(255),
    ip_address character varying(255),
    resource_path character varying(2550),
    representation text,
    error character varying(255),
    resource_type character varying(64),
    details_json text
);
 &   DROP TABLE public.admin_event_entity;
       public         heap r       keycloak    false                       1259    17460    associated_policy    TABLE     �   CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);
 %   DROP TABLE public.associated_policy;
       public         heap r       keycloak    false            �            1259    17032    authentication_execution    TABLE     �  CREATE TABLE public.authentication_execution (
    id character varying(36) NOT NULL,
    alias character varying(255),
    authenticator character varying(36),
    realm_id character varying(36),
    flow_id character varying(36),
    requirement integer,
    priority integer,
    authenticator_flow boolean DEFAULT false NOT NULL,
    auth_flow_id character varying(36),
    auth_config character varying(36)
);
 ,   DROP TABLE public.authentication_execution;
       public         heap r       keycloak    false            �            1259    17027    authentication_flow    TABLE     t  CREATE TABLE public.authentication_flow (
    id character varying(36) NOT NULL,
    alias character varying(255),
    description character varying(255),
    realm_id character varying(36),
    provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    built_in boolean DEFAULT false NOT NULL
);
 '   DROP TABLE public.authentication_flow;
       public         heap r       keycloak    false            �            1259    17022    authenticator_config    TABLE     �   CREATE TABLE public.authenticator_config (
    id character varying(36) NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);
 (   DROP TABLE public.authenticator_config;
       public         heap r       keycloak    false            �            1259    17037    authenticator_config_entry    TABLE     �   CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);
 .   DROP TABLE public.authenticator_config_entry;
       public         heap r       keycloak    false                       1259    17475    broker_link    TABLE     L  CREATE TABLE public.broker_link (
    identity_provider character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL,
    broker_user_id character varying(255),
    broker_username character varying(255),
    token text,
    user_id character varying(255) NOT NULL
);
    DROP TABLE public.broker_link;
       public         heap r       keycloak    false            �            1259    16398    client    TABLE     �  CREATE TABLE public.client (
    id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    full_scope_allowed boolean DEFAULT false NOT NULL,
    client_id character varying(255),
    not_before integer,
    public_client boolean DEFAULT false NOT NULL,
    secret character varying(255),
    base_url character varying(255),
    bearer_only boolean DEFAULT false NOT NULL,
    management_url character varying(255),
    surrogate_auth_required boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    protocol character varying(255),
    node_rereg_timeout integer DEFAULT 0,
    frontchannel_logout boolean DEFAULT false NOT NULL,
    consent_required boolean DEFAULT false NOT NULL,
    name character varying(255),
    service_accounts_enabled boolean DEFAULT false NOT NULL,
    client_authenticator_type character varying(255),
    root_url character varying(255),
    description character varying(255),
    registration_token character varying(255),
    standard_flow_enabled boolean DEFAULT true NOT NULL,
    implicit_flow_enabled boolean DEFAULT false NOT NULL,
    direct_access_grants_enabled boolean DEFAULT false NOT NULL,
    always_display_in_console boolean DEFAULT false NOT NULL
);
    DROP TABLE public.client;
       public         heap r       keycloak    false            �            1259    16756    client_attributes    TABLE     �   CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);
 %   DROP TABLE public.client_attributes;
       public         heap r       keycloak    false            "           1259    17725    client_auth_flow_bindings    TABLE     �   CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);
 -   DROP TABLE public.client_auth_flow_bindings;
       public         heap r       keycloak    false            !           1259    17599    client_initial_access    TABLE     �   CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);
 )   DROP TABLE public.client_initial_access;
       public         heap r       keycloak    false            �            1259    16766    client_node_registrations    TABLE     �   CREATE TABLE public.client_node_registrations (
    client_id character varying(36) NOT NULL,
    value integer,
    name character varying(255) NOT NULL
);
 -   DROP TABLE public.client_node_registrations;
       public         heap r       keycloak    false                       1259    17265    client_scope    TABLE     �   CREATE TABLE public.client_scope (
    id character varying(36) NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);
     DROP TABLE public.client_scope;
       public         heap r       keycloak    false                       1259    17279    client_scope_attributes    TABLE     �   CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) NOT NULL,
    value character varying(2048),
    name character varying(255) NOT NULL
);
 +   DROP TABLE public.client_scope_attributes;
       public         heap r       keycloak    false            #           1259    17766    client_scope_client    TABLE     �   CREATE TABLE public.client_scope_client (
    client_id character varying(255) NOT NULL,
    scope_id character varying(255) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);
 '   DROP TABLE public.client_scope_client;
       public         heap r       keycloak    false                       1259    17284    client_scope_role_mapping    TABLE     �   CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);
 -   DROP TABLE public.client_scope_role_mapping;
       public         heap r       keycloak    false                       1259    17520 	   component    TABLE     )  CREATE TABLE public.component (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_id character varying(36),
    provider_id character varying(36),
    provider_type character varying(255),
    realm_id character varying(36),
    sub_type character varying(255)
);
    DROP TABLE public.component;
       public         heap r       keycloak    false                       1259    17515    component_config    TABLE     �   CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);
 $   DROP TABLE public.component_config;
       public         heap r       keycloak    false            �            1259    16417    composite_role    TABLE     �   CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);
 "   DROP TABLE public.composite_role;
       public         heap r       keycloak    false            �            1259    16420 
   credential    TABLE     $  CREATE TABLE public.credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    user_id character varying(36),
    created_date bigint,
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);
    DROP TABLE public.credential;
       public         heap r       keycloak    false            �            1259    16390    databasechangelog    TABLE     Y  CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);
 %   DROP TABLE public.databasechangelog;
       public         heap r       keycloak    false            �            1259    16385    databasechangeloglock    TABLE     �   CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);
 )   DROP TABLE public.databasechangeloglock;
       public         heap r       keycloak    false            $           1259    17782    default_client_scope    TABLE     �   CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);
 (   DROP TABLE public.default_client_scope;
       public         heap r       keycloak    false            �            1259    16425    event_entity    TABLE     �  CREATE TABLE public.event_entity (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    details_json character varying(2550),
    error character varying(255),
    ip_address character varying(255),
    realm_id character varying(255),
    session_id character varying(255),
    event_time bigint,
    type character varying(255),
    user_id character varying(255),
    details_json_long_value text
);
     DROP TABLE public.event_entity;
       public         heap r       keycloak    false                       1259    17480    fed_user_attribute    TABLE     ~  CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024),
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);
 &   DROP TABLE public.fed_user_attribute;
       public         heap r       keycloak    false                       1259    17485    fed_user_consent    TABLE     �  CREATE TABLE public.fed_user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);
 $   DROP TABLE public.fed_user_consent;
       public         heap r       keycloak    false            &           1259    17808    fed_user_consent_cl_scope    TABLE     �   CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);
 -   DROP TABLE public.fed_user_consent_cl_scope;
       public         heap r       keycloak    false                       1259    17494    fed_user_credential    TABLE     �  CREATE TABLE public.fed_user_credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    created_date bigint,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);
 '   DROP TABLE public.fed_user_credential;
       public         heap r       keycloak    false                       1259    17503    fed_user_group_membership    TABLE     �   CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);
 -   DROP TABLE public.fed_user_group_membership;
       public         heap r       keycloak    false                       1259    17506    fed_user_required_action    TABLE       CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);
 ,   DROP TABLE public.fed_user_required_action;
       public         heap r       keycloak    false                       1259    17512    fed_user_role_mapping    TABLE     �   CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);
 )   DROP TABLE public.fed_user_role_mapping;
       public         heap r       keycloak    false            �            1259    16802    federated_identity    TABLE       CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);
 &   DROP TABLE public.federated_identity;
       public         heap r       keycloak    false                        1259    17577    federated_user    TABLE     �   CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);
 "   DROP TABLE public.federated_user;
       public         heap r       keycloak    false                       1259    17204    group_attribute    TABLE       CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);
 #   DROP TABLE public.group_attribute;
       public         heap r       keycloak    false                       1259    17201    group_role_mapping    TABLE     �   CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);
 &   DROP TABLE public.group_role_mapping;
       public         heap r       keycloak    false            �            1259    16807    identity_provider    TABLE     �  CREATE TABLE public.identity_provider (
    internal_id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    provider_alias character varying(255),
    provider_id character varying(255),
    store_token boolean DEFAULT false NOT NULL,
    authenticate_by_default boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    add_token_role boolean DEFAULT true NOT NULL,
    trust_email boolean DEFAULT false NOT NULL,
    first_broker_login_flow_id character varying(36),
    post_broker_login_flow_id character varying(36),
    provider_display_name character varying(255),
    link_only boolean DEFAULT false NOT NULL,
    organization_id character varying(255),
    hide_on_login boolean DEFAULT false
);
 %   DROP TABLE public.identity_provider;
       public         heap r       keycloak    false            �            1259    16816    identity_provider_config    TABLE     �   CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);
 ,   DROP TABLE public.identity_provider_config;
       public         heap r       keycloak    false            �            1259    16920    identity_provider_mapper    TABLE       CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);
 ,   DROP TABLE public.identity_provider_mapper;
       public         heap r       keycloak    false            �            1259    16925    idp_mapper_config    TABLE     �   CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);
 %   DROP TABLE public.idp_mapper_config;
       public         heap r       keycloak    false            /           1259    18008    jgroups_ping    TABLE     �   CREATE TABLE public.jgroups_ping (
    address character varying(200) NOT NULL,
    name character varying(200),
    cluster_name character varying(200) NOT NULL,
    ip character varying(200) NOT NULL,
    coord boolean
);
     DROP TABLE public.jgroups_ping;
       public         heap r       keycloak    false                       1259    17198    keycloak_group    TABLE     �   CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36),
    type integer DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.keycloak_group;
       public         heap r       keycloak    false            �            1259    16433    keycloak_role    TABLE     b  CREATE TABLE public.keycloak_role (
    id character varying(36) NOT NULL,
    client_realm_constraint character varying(255),
    client_role boolean DEFAULT false NOT NULL,
    description character varying(255),
    name character varying(255),
    realm_id character varying(255),
    client character varying(36),
    realm character varying(36)
);
 !   DROP TABLE public.keycloak_role;
       public         heap r       keycloak    false            �            1259    16917    migration_model    TABLE     �   CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.migration_model;
       public         heap r       keycloak    false                       1259    17189    offline_client_session    TABLE     �  CREATE TABLE public.offline_client_session (
    user_session_id character varying(36) NOT NULL,
    client_id character varying(255) NOT NULL,
    offline_flag character varying(4) NOT NULL,
    "timestamp" integer,
    data text,
    client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
    external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL,
    version integer DEFAULT 0
);
 *   DROP TABLE public.offline_client_session;
       public         heap r       keycloak    false                       1259    17184    offline_user_session    TABLE     �  CREATE TABLE public.offline_user_session (
    user_session_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    created_on integer NOT NULL,
    offline_flag character varying(4) NOT NULL,
    data text,
    last_session_refresh integer DEFAULT 0 NOT NULL,
    broker_session_id character varying(1024),
    version integer DEFAULT 0
);
 (   DROP TABLE public.offline_user_session;
       public         heap r       keycloak    false            ,           1259    17971    org    TABLE     f  CREATE TABLE public.org (
    id character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    realm_id character varying(255) NOT NULL,
    group_id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(4000),
    alias character varying(255) NOT NULL,
    redirect_url character varying(2048)
);
    DROP TABLE public.org;
       public         heap r       keycloak    false            -           1259    17982 
   org_domain    TABLE     �   CREATE TABLE public.org_domain (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    verified boolean NOT NULL,
    org_id character varying(255) NOT NULL
);
    DROP TABLE public.org_domain;
       public         heap r       keycloak    false                       1259    17403    policy_config    TABLE     �   CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);
 !   DROP TABLE public.policy_config;
       public         heap r       keycloak    false            �            1259    16791    protocol_mapper    TABLE     1  CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);
 #   DROP TABLE public.protocol_mapper;
       public         heap r       keycloak    false            �            1259    16797    protocol_mapper_config    TABLE     �   CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);
 *   DROP TABLE public.protocol_mapper_config;
       public         heap r       keycloak    false            �            1259    16439    realm    TABLE     �	  CREATE TABLE public.realm (
    id character varying(36) NOT NULL,
    access_code_lifespan integer,
    user_action_lifespan integer,
    access_token_lifespan integer,
    account_theme character varying(255),
    admin_theme character varying(255),
    email_theme character varying(255),
    enabled boolean DEFAULT false NOT NULL,
    events_enabled boolean DEFAULT false NOT NULL,
    events_expiration bigint,
    login_theme character varying(255),
    name character varying(255),
    not_before integer,
    password_policy character varying(2550),
    registration_allowed boolean DEFAULT false NOT NULL,
    remember_me boolean DEFAULT false NOT NULL,
    reset_password_allowed boolean DEFAULT false NOT NULL,
    social boolean DEFAULT false NOT NULL,
    ssl_required character varying(255),
    sso_idle_timeout integer,
    sso_max_lifespan integer,
    update_profile_on_soc_login boolean DEFAULT false NOT NULL,
    verify_email boolean DEFAULT false NOT NULL,
    master_admin_client character varying(36),
    login_lifespan integer,
    internationalization_enabled boolean DEFAULT false NOT NULL,
    default_locale character varying(255),
    reg_email_as_username boolean DEFAULT false NOT NULL,
    admin_events_enabled boolean DEFAULT false NOT NULL,
    admin_events_details_enabled boolean DEFAULT false NOT NULL,
    edit_username_allowed boolean DEFAULT false NOT NULL,
    otp_policy_counter integer DEFAULT 0,
    otp_policy_window integer DEFAULT 1,
    otp_policy_period integer DEFAULT 30,
    otp_policy_digits integer DEFAULT 6,
    otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
    otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
    browser_flow character varying(36),
    registration_flow character varying(36),
    direct_grant_flow character varying(36),
    reset_credentials_flow character varying(36),
    client_auth_flow character varying(36),
    offline_session_idle_timeout integer DEFAULT 0,
    revoke_refresh_token boolean DEFAULT false NOT NULL,
    access_token_life_implicit integer DEFAULT 0,
    login_with_email_allowed boolean DEFAULT true NOT NULL,
    duplicate_emails_allowed boolean DEFAULT false NOT NULL,
    docker_auth_flow character varying(36),
    refresh_token_max_reuse integer DEFAULT 0,
    allow_user_managed_access boolean DEFAULT false NOT NULL,
    sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
    default_role character varying(255)
);
    DROP TABLE public.realm;
       public         heap r       keycloak    false            �            1259    16456    realm_attribute    TABLE     �   CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    value text
);
 #   DROP TABLE public.realm_attribute;
       public         heap r       keycloak    false            
           1259    17213    realm_default_groups    TABLE     �   CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);
 (   DROP TABLE public.realm_default_groups;
       public         heap r       keycloak    false            �            1259    16909    realm_enabled_event_types    TABLE     �   CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
 -   DROP TABLE public.realm_enabled_event_types;
       public         heap r       keycloak    false            �            1259    16464    realm_events_listeners    TABLE     �   CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
 *   DROP TABLE public.realm_events_listeners;
       public         heap r       keycloak    false            +           1259    17917    realm_localizations    TABLE     �   CREATE TABLE public.realm_localizations (
    realm_id character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    texts text NOT NULL
);
 '   DROP TABLE public.realm_localizations;
       public         heap r       keycloak    false            �            1259    16467    realm_required_credential    TABLE       CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);
 -   DROP TABLE public.realm_required_credential;
       public         heap r       keycloak    false            �            1259    16474    realm_smtp_config    TABLE     �   CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);
 %   DROP TABLE public.realm_smtp_config;
       public         heap r       keycloak    false            �            1259    16825    realm_supported_locales    TABLE     �   CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
 +   DROP TABLE public.realm_supported_locales;
       public         heap r       keycloak    false            �            1259    16484    redirect_uris    TABLE        CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
 !   DROP TABLE public.redirect_uris;
       public         heap r       keycloak    false                       1259    17148    required_action_config    TABLE     �   CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);
 *   DROP TABLE public.required_action_config;
       public         heap r       keycloak    false                       1259    17141    required_action_provider    TABLE     \  CREATE TABLE public.required_action_provider (
    id character varying(36) NOT NULL,
    alias character varying(255),
    name character varying(255),
    realm_id character varying(36),
    enabled boolean DEFAULT false NOT NULL,
    default_action boolean DEFAULT false NOT NULL,
    provider_id character varying(255),
    priority integer
);
 ,   DROP TABLE public.required_action_provider;
       public         heap r       keycloak    false            (           1259    17848    resource_attribute    TABLE       CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);
 &   DROP TABLE public.resource_attribute;
       public         heap r       keycloak    false                       1259    17430    resource_policy    TABLE     �   CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);
 #   DROP TABLE public.resource_policy;
       public         heap r       keycloak    false                       1259    17415    resource_scope    TABLE     �   CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);
 "   DROP TABLE public.resource_scope;
       public         heap r       keycloak    false                       1259    17353    resource_server    TABLE     �   CREATE TABLE public.resource_server (
    id character varying(36) NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode smallint NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);
 #   DROP TABLE public.resource_server;
       public         heap r       keycloak    false            '           1259    17824    resource_server_perm_ticket    TABLE     �  CREATE TABLE public.resource_server_perm_ticket (
    id character varying(36) NOT NULL,
    owner character varying(255) NOT NULL,
    requester character varying(255) NOT NULL,
    created_timestamp bigint NOT NULL,
    granted_timestamp bigint,
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36),
    resource_server_id character varying(36) NOT NULL,
    policy_id character varying(36)
);
 /   DROP TABLE public.resource_server_perm_ticket;
       public         heap r       keycloak    false                       1259    17389    resource_server_policy    TABLE     _  CREATE TABLE public.resource_server_policy (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255) NOT NULL,
    decision_strategy smallint,
    logic smallint,
    resource_server_id character varying(36) NOT NULL,
    owner character varying(255)
);
 *   DROP TABLE public.resource_server_policy;
       public         heap r       keycloak    false                       1259    17361    resource_server_resource    TABLE     �  CREATE TABLE public.resource_server_resource (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    icon_uri character varying(255),
    owner character varying(255) NOT NULL,
    resource_server_id character varying(36) NOT NULL,
    owner_managed_access boolean DEFAULT false NOT NULL,
    display_name character varying(255)
);
 ,   DROP TABLE public.resource_server_resource;
       public         heap r       keycloak    false                       1259    17375    resource_server_scope    TABLE       CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) NOT NULL,
    display_name character varying(255)
);
 )   DROP TABLE public.resource_server_scope;
       public         heap r       keycloak    false            )           1259    17866    resource_uris    TABLE     �   CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
 !   DROP TABLE public.resource_uris;
       public         heap r       keycloak    false            .           1259    17999    revoked_token    TABLE     j   CREATE TABLE public.revoked_token (
    id character varying(255) NOT NULL,
    expire bigint NOT NULL
);
 !   DROP TABLE public.revoked_token;
       public         heap r       keycloak    false            *           1259    17876    role_attribute    TABLE     �   CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);
 "   DROP TABLE public.role_attribute;
       public         heap r       keycloak    false            �            1259    16487    scope_mapping    TABLE     �   CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);
 !   DROP TABLE public.scope_mapping;
       public         heap r       keycloak    false                       1259    17445    scope_policy    TABLE     �   CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);
     DROP TABLE public.scope_policy;
       public         heap r       keycloak    false            �            1259    16493    user_attribute    TABLE     U  CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    long_value_hash bytea,
    long_value_hash_lower_case bytea,
    long_value text
);
 "   DROP TABLE public.user_attribute;
       public         heap r       keycloak    false            �            1259    16930    user_consent    TABLE     7  CREATE TABLE public.user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(36) NOT NULL,
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);
     DROP TABLE public.user_consent;
       public         heap r       keycloak    false            %           1259    17798    user_consent_client_scope    TABLE     �   CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);
 -   DROP TABLE public.user_consent_client_scope;
       public         heap r       keycloak    false            �            1259    16498    user_entity    TABLE     =  CREATE TABLE public.user_entity (
    id character varying(36) NOT NULL,
    email character varying(255),
    email_constraint character varying(255),
    email_verified boolean DEFAULT false NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    federation_link character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    realm_id character varying(255),
    username character varying(255),
    created_timestamp bigint,
    service_account_client_link character varying(255),
    not_before integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.user_entity;
       public         heap r       keycloak    false            �            1259    16506    user_federation_config    TABLE     �   CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);
 *   DROP TABLE public.user_federation_config;
       public         heap r       keycloak    false                        1259    17042    user_federation_mapper    TABLE     $  CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);
 *   DROP TABLE public.user_federation_mapper;
       public         heap r       keycloak    false                       1259    17047    user_federation_mapper_config    TABLE     �   CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);
 1   DROP TABLE public.user_federation_mapper_config;
       public         heap r       keycloak    false            �            1259    16511    user_federation_provider    TABLE     ;  CREATE TABLE public.user_federation_provider (
    id character varying(36) NOT NULL,
    changed_sync_period integer,
    display_name character varying(255),
    full_sync_period integer,
    last_sync integer,
    priority integer,
    provider_name character varying(255),
    realm_id character varying(36)
);
 ,   DROP TABLE public.user_federation_provider;
       public         heap r       keycloak    false            	           1259    17210    user_group_membership    TABLE     �   CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL,
    membership_type character varying(255) NOT NULL
);
 )   DROP TABLE public.user_group_membership;
       public         heap r       keycloak    false            �            1259    16516    user_required_action    TABLE     �   CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);
 (   DROP TABLE public.user_required_action;
       public         heap r       keycloak    false            �            1259    16519    user_role_mapping    TABLE     �   CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);
 %   DROP TABLE public.user_role_mapping;
       public         heap r       keycloak    false            �            1259    16533    web_origins    TABLE     }   CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);
    DROP TABLE public.web_origins;
       public         heap r       keycloak    false            O          0    17017    admin_event_entity 
   TABLE DATA           �   COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type, details_json) FROM stdin;
    public               keycloak    false    251            j          0    17460    associated_policy 
   TABLE DATA           L   COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
    public               keycloak    false    278            R          0    17032    authentication_execution 
   TABLE DATA           �   COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
    public               keycloak    false    254            Q          0    17027    authentication_flow 
   TABLE DATA           q   COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
    public               keycloak    false    253            P          0    17022    authenticator_config 
   TABLE DATA           C   COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
    public               keycloak    false    252            S          0    17037    authenticator_config_entry 
   TABLE DATA           S   COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
    public               keycloak    false    255            k          0    17475    broker_link 
   TABLE DATA           �   COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
    public               keycloak    false    279            /          0    16398    client 
   TABLE DATA           �  COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
    public               keycloak    false    219            B          0    16756    client_attributes 
   TABLE DATA           C   COPY public.client_attributes (client_id, name, value) FROM stdin;
    public               keycloak    false    238            v          0    17725    client_auth_flow_bindings 
   TABLE DATA           U   COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
    public               keycloak    false    290            u          0    17599    client_initial_access 
   TABLE DATA           n   COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
    public               keycloak    false    289            C          0    16766    client_node_registrations 
   TABLE DATA           K   COPY public.client_node_registrations (client_id, value, name) FROM stdin;
    public               keycloak    false    239            _          0    17265    client_scope 
   TABLE DATA           Q   COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
    public               keycloak    false    267            `          0    17279    client_scope_attributes 
   TABLE DATA           H   COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
    public               keycloak    false    268            w          0    17766    client_scope_client 
   TABLE DATA           Q   COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
    public               keycloak    false    291            a          0    17284    client_scope_role_mapping 
   TABLE DATA           F   COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
    public               keycloak    false    269            s          0    17520 	   component 
   TABLE DATA           h   COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
    public               keycloak    false    287            r          0    17515    component_config 
   TABLE DATA           I   COPY public.component_config (id, component_id, name, value) FROM stdin;
    public               keycloak    false    286            0          0    16417    composite_role 
   TABLE DATA           ?   COPY public.composite_role (composite, child_role) FROM stdin;
    public               keycloak    false    220            1          0    16420 
   credential 
   TABLE DATA              COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
    public               keycloak    false    221            .          0    16390    databasechangelog 
   TABLE DATA           �   COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
    public               keycloak    false    218            -          0    16385    databasechangeloglock 
   TABLE DATA           R   COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
    public               keycloak    false    217            x          0    17782    default_client_scope 
   TABLE DATA           Q   COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
    public               keycloak    false    292            2          0    16425    event_entity 
   TABLE DATA           �   COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id, details_json_long_value) FROM stdin;
    public               keycloak    false    222            l          0    17480    fed_user_attribute 
   TABLE DATA           �   COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
    public               keycloak    false    280            m          0    17485    fed_user_consent 
   TABLE DATA           �   COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
    public               keycloak    false    281            z          0    17808    fed_user_consent_cl_scope 
   TABLE DATA           N   COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
    public               keycloak    false    294            n          0    17494    fed_user_credential 
   TABLE DATA           �   COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
    public               keycloak    false    282            o          0    17503    fed_user_group_membership 
   TABLE DATA           e   COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
    public               keycloak    false    283            p          0    17506    fed_user_required_action 
   TABLE DATA           k   COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
    public               keycloak    false    284            q          0    17512    fed_user_role_mapping 
   TABLE DATA           `   COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
    public               keycloak    false    285            F          0    16802    federated_identity 
   TABLE DATA           �   COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
    public               keycloak    false    242            t          0    17577    federated_user 
   TABLE DATA           K   COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
    public               keycloak    false    288            \          0    17204    group_attribute 
   TABLE DATA           D   COPY public.group_attribute (id, name, value, group_id) FROM stdin;
    public               keycloak    false    264            [          0    17201    group_role_mapping 
   TABLE DATA           ?   COPY public.group_role_mapping (role_id, group_id) FROM stdin;
    public               keycloak    false    263            G          0    16807    identity_provider 
   TABLE DATA           $  COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only, organization_id, hide_on_login) FROM stdin;
    public               keycloak    false    243            H          0    16816    identity_provider_config 
   TABLE DATA           U   COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
    public               keycloak    false    244            L          0    16920    identity_provider_mapper 
   TABLE DATA           b   COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
    public               keycloak    false    248            M          0    16925    idp_mapper_config 
   TABLE DATA           G   COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
    public               keycloak    false    249            �          0    18008    jgroups_ping 
   TABLE DATA           N   COPY public.jgroups_ping (address, name, cluster_name, ip, coord) FROM stdin;
    public               keycloak    false    303            Z          0    17198    keycloak_group 
   TABLE DATA           P   COPY public.keycloak_group (id, name, parent_group, realm_id, type) FROM stdin;
    public               keycloak    false    262            3          0    16433    keycloak_role 
   TABLE DATA           }   COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
    public               keycloak    false    223            K          0    16917    migration_model 
   TABLE DATA           C   COPY public.migration_model (id, version, update_time) FROM stdin;
    public               keycloak    false    247            Y          0    17189    offline_client_session 
   TABLE DATA           �   COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id, version) FROM stdin;
    public               keycloak    false    261            X          0    17184    offline_user_session 
   TABLE DATA           �   COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh, broker_session_id, version) FROM stdin;
    public               keycloak    false    260            �          0    17971    org 
   TABLE DATA           f   COPY public.org (id, enabled, realm_id, group_id, name, description, alias, redirect_url) FROM stdin;
    public               keycloak    false    300            �          0    17982 
   org_domain 
   TABLE DATA           @   COPY public.org_domain (id, name, verified, org_id) FROM stdin;
    public               keycloak    false    301            f          0    17403    policy_config 
   TABLE DATA           ?   COPY public.policy_config (policy_id, name, value) FROM stdin;
    public               keycloak    false    274            D          0    16791    protocol_mapper 
   TABLE DATA           o   COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
    public               keycloak    false    240            E          0    16797    protocol_mapper_config 
   TABLE DATA           Q   COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
    public               keycloak    false    241            4          0    16439    realm 
   TABLE DATA              COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
    public               keycloak    false    224            5          0    16456    realm_attribute 
   TABLE DATA           @   COPY public.realm_attribute (name, realm_id, value) FROM stdin;
    public               keycloak    false    225            ^          0    17213    realm_default_groups 
   TABLE DATA           B   COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
    public               keycloak    false    266            J          0    16909    realm_enabled_event_types 
   TABLE DATA           D   COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
    public               keycloak    false    246            6          0    16464    realm_events_listeners 
   TABLE DATA           A   COPY public.realm_events_listeners (realm_id, value) FROM stdin;
    public               keycloak    false    226                      0    17917    realm_localizations 
   TABLE DATA           F   COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
    public               keycloak    false    299            7          0    16467    realm_required_credential 
   TABLE DATA           ^   COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
    public               keycloak    false    227            8          0    16474    realm_smtp_config 
   TABLE DATA           B   COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
    public               keycloak    false    228            I          0    16825    realm_supported_locales 
   TABLE DATA           B   COPY public.realm_supported_locales (realm_id, value) FROM stdin;
    public               keycloak    false    245            9          0    16484    redirect_uris 
   TABLE DATA           9   COPY public.redirect_uris (client_id, value) FROM stdin;
    public               keycloak    false    229            W          0    17148    required_action_config 
   TABLE DATA           Q   COPY public.required_action_config (required_action_id, value, name) FROM stdin;
    public               keycloak    false    259            V          0    17141    required_action_provider 
   TABLE DATA           }   COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
    public               keycloak    false    258            |          0    17848    resource_attribute 
   TABLE DATA           J   COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
    public               keycloak    false    296            h          0    17430    resource_policy 
   TABLE DATA           A   COPY public.resource_policy (resource_id, policy_id) FROM stdin;
    public               keycloak    false    276            g          0    17415    resource_scope 
   TABLE DATA           ?   COPY public.resource_scope (resource_id, scope_id) FROM stdin;
    public               keycloak    false    275            b          0    17353    resource_server 
   TABLE DATA           k   COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
    public               keycloak    false    270            {          0    17824    resource_server_perm_ticket 
   TABLE DATA           �   COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
    public               keycloak    false    295            e          0    17389    resource_server_policy 
   TABLE DATA           �   COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
    public               keycloak    false    273            c          0    17361    resource_server_resource 
   TABLE DATA           �   COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
    public               keycloak    false    271            d          0    17375    resource_server_scope 
   TABLE DATA           e   COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
    public               keycloak    false    272            }          0    17866    resource_uris 
   TABLE DATA           ;   COPY public.resource_uris (resource_id, value) FROM stdin;
    public               keycloak    false    297            �          0    17999    revoked_token 
   TABLE DATA           3   COPY public.revoked_token (id, expire) FROM stdin;
    public               keycloak    false    302            ~          0    17876    role_attribute 
   TABLE DATA           B   COPY public.role_attribute (id, role_id, name, value) FROM stdin;
    public               keycloak    false    298            :          0    16487    scope_mapping 
   TABLE DATA           ;   COPY public.scope_mapping (client_id, role_id) FROM stdin;
    public               keycloak    false    230            i          0    17445    scope_policy 
   TABLE DATA           ;   COPY public.scope_policy (scope_id, policy_id) FROM stdin;
    public               keycloak    false    277            ;          0    16493    user_attribute 
   TABLE DATA           {   COPY public.user_attribute (name, value, user_id, id, long_value_hash, long_value_hash_lower_case, long_value) FROM stdin;
    public               keycloak    false    231            N          0    16930    user_consent 
   TABLE DATA           �   COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
    public               keycloak    false    250            y          0    17798    user_consent_client_scope 
   TABLE DATA           N   COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
    public               keycloak    false    293            <          0    16498    user_entity 
   TABLE DATA           �   COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before) FROM stdin;
    public               keycloak    false    232            =          0    16506    user_federation_config 
   TABLE DATA           Z   COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
    public               keycloak    false    233            T          0    17042    user_federation_mapper 
   TABLE DATA           t   COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
    public               keycloak    false    256            U          0    17047    user_federation_mapper_config 
   TABLE DATA           _   COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
    public               keycloak    false    257            >          0    16511    user_federation_provider 
   TABLE DATA           �   COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
    public               keycloak    false    234            ]          0    17210    user_group_membership 
   TABLE DATA           S   COPY public.user_group_membership (group_id, user_id, membership_type) FROM stdin;
    public               keycloak    false    265            ?          0    16516    user_required_action 
   TABLE DATA           H   COPY public.user_required_action (user_id, required_action) FROM stdin;
    public               keycloak    false    235            @          0    16519    user_role_mapping 
   TABLE DATA           =   COPY public.user_role_mapping (role_id, user_id) FROM stdin;
    public               keycloak    false    236            A          0    16533    web_origins 
   TABLE DATA           7   COPY public.web_origins (client_id, value) FROM stdin;
    public               keycloak    false    237            R           2606    17988    org_domain ORG_DOMAIN_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.org_domain
    ADD CONSTRAINT "ORG_DOMAIN_pkey" PRIMARY KEY (id, name);
 F   ALTER TABLE ONLY public.org_domain DROP CONSTRAINT "ORG_DOMAIN_pkey";
       public                 keycloak    false    301    301            J           2606    17977    org ORG_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.org
    ADD CONSTRAINT "ORG_pkey" PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.org DROP CONSTRAINT "ORG_pkey";
       public                 keycloak    false    300            @           2606    17900 ,   keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2 
   CONSTRAINT     �   ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);
 X   ALTER TABLE ONLY public.keycloak_role DROP CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2";
       public                 keycloak    false    223    223            +           2606    17729 )   client_auth_flow_bindings c_cli_flow_bind 
   CONSTRAINT     |   ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);
 S   ALTER TABLE ONLY public.client_auth_flow_bindings DROP CONSTRAINT c_cli_flow_bind;
       public                 keycloak    false    290    290            -           2606    17929 $   client_scope_client c_cli_scope_bind 
   CONSTRAINT     s   ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);
 N   ALTER TABLE ONLY public.client_scope_client DROP CONSTRAINT c_cli_scope_bind;
       public                 keycloak    false    291    291            (           2606    17603 .   client_initial_access cnstr_client_init_acc_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.client_initial_access DROP CONSTRAINT cnstr_client_init_acc_pk;
       public                 keycloak    false    289            �           2606    17251 ,   realm_default_groups con_group_id_def_groups 
   CONSTRAINT     k   ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);
 V   ALTER TABLE ONLY public.realm_default_groups DROP CONSTRAINT con_group_id_def_groups;
       public                 keycloak    false    266                       2606    17526 !   broker_link constr_broker_link_pk 
   CONSTRAINT     w   ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);
 K   ALTER TABLE ONLY public.broker_link DROP CONSTRAINT constr_broker_link_pk;
       public                 keycloak    false    279    279                       2606    17546 +   component_config constr_component_config_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.component_config DROP CONSTRAINT constr_component_config_pk;
       public                 keycloak    false    286            "           2606    17544    component constr_component_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.component DROP CONSTRAINT constr_component_pk;
       public                 keycloak    false    287                       2606    17542 3   fed_user_required_action constr_fed_required_action 
   CONSTRAINT     �   ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);
 ]   ALTER TABLE ONLY public.fed_user_required_action DROP CONSTRAINT constr_fed_required_action;
       public                 keycloak    false    284    284                       2606    17528 *   fed_user_attribute constr_fed_user_attr_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.fed_user_attribute DROP CONSTRAINT constr_fed_user_attr_pk;
       public                 keycloak    false    280            
           2606    17530 +   fed_user_consent constr_fed_user_consent_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.fed_user_consent DROP CONSTRAINT constr_fed_user_consent_pk;
       public                 keycloak    false    281                       2606    17536 +   fed_user_credential constr_fed_user_cred_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.fed_user_credential DROP CONSTRAINT constr_fed_user_cred_pk;
       public                 keycloak    false    282                       2606    17538 /   fed_user_group_membership constr_fed_user_group 
   CONSTRAINT     |   ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);
 Y   ALTER TABLE ONLY public.fed_user_group_membership DROP CONSTRAINT constr_fed_user_group;
       public                 keycloak    false    283    283                       2606    17540 *   fed_user_role_mapping constr_fed_user_role 
   CONSTRAINT     v   ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);
 T   ALTER TABLE ONLY public.fed_user_role_mapping DROP CONSTRAINT constr_fed_user_role;
       public                 keycloak    false    285    285            &           2606    17583 $   federated_user constr_federated_user 
   CONSTRAINT     b   ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.federated_user DROP CONSTRAINT constr_federated_user;
       public                 keycloak    false    288            �           2606    17688 0   realm_default_groups constr_realm_default_groups 
   CONSTRAINT     ~   ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);
 Z   ALTER TABLE ONLY public.realm_default_groups DROP CONSTRAINT constr_realm_default_groups;
       public                 keycloak    false    266    266            �           2606    17705 8   realm_enabled_event_types constr_realm_enabl_event_types 
   CONSTRAINT     �   ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);
 b   ALTER TABLE ONLY public.realm_enabled_event_types DROP CONSTRAINT constr_realm_enabl_event_types;
       public                 keycloak    false    246    246            N           2606    17707 4   realm_events_listeners constr_realm_events_listeners 
   CONSTRAINT        ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);
 ^   ALTER TABLE ONLY public.realm_events_listeners DROP CONSTRAINT constr_realm_events_listeners;
       public                 keycloak    false    226    226            �           2606    17709 6   realm_supported_locales constr_realm_supported_locales 
   CONSTRAINT     �   ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);
 `   ALTER TABLE ONLY public.realm_supported_locales DROP CONSTRAINT constr_realm_supported_locales;
       public                 keycloak    false    245    245            �           2606    16837    identity_provider constraint_2b 
   CONSTRAINT     f   ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);
 I   ALTER TABLE ONLY public.identity_provider DROP CONSTRAINT constraint_2b;
       public                 keycloak    false    243            w           2606    16771    client_attributes constraint_3c 
   CONSTRAINT     j   ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);
 I   ALTER TABLE ONLY public.client_attributes DROP CONSTRAINT constraint_3c;
       public                 keycloak    false    238    238            =           2606    16545    event_entity constraint_4 
   CONSTRAINT     W   ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.event_entity DROP CONSTRAINT constraint_4;
       public                 keycloak    false    222            �           2606    16839     federated_identity constraint_40 
   CONSTRAINT     v   ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);
 J   ALTER TABLE ONLY public.federated_identity DROP CONSTRAINT constraint_40;
       public                 keycloak    false    242    242            F           2606    16547    realm constraint_4a 
   CONSTRAINT     Q   ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.realm DROP CONSTRAINT constraint_4a;
       public                 keycloak    false    224            k           2606    16553 &   user_federation_provider constraint_5c 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_federation_provider DROP CONSTRAINT constraint_5c;
       public                 keycloak    false    234            1           2606    16557    client constraint_7 
   CONSTRAINT     Q   ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.client DROP CONSTRAINT constraint_7;
       public                 keycloak    false    219            X           2606    16561    scope_mapping constraint_81 
   CONSTRAINT     i   ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);
 E   ALTER TABLE ONLY public.scope_mapping DROP CONSTRAINT constraint_81;
       public                 keycloak    false    230    230            z           2606    16775 '   client_node_registrations constraint_84 
   CONSTRAINT     r   ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);
 Q   ALTER TABLE ONLY public.client_node_registrations DROP CONSTRAINT constraint_84;
       public                 keycloak    false    239    239            K           2606    16563    realm_attribute constraint_9 
   CONSTRAINT     f   ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);
 F   ALTER TABLE ONLY public.realm_attribute DROP CONSTRAINT constraint_9;
       public                 keycloak    false    225    225            Q           2606    16565 '   realm_required_credential constraint_92 
   CONSTRAINT     q   ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);
 Q   ALTER TABLE ONLY public.realm_required_credential DROP CONSTRAINT constraint_92;
       public                 keycloak    false    227    227            B           2606    16567    keycloak_role constraint_a 
   CONSTRAINT     X   ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.keycloak_role DROP CONSTRAINT constraint_a;
       public                 keycloak    false    223            �           2606    17692 0   admin_event_entity constraint_admin_event_entity 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_event_entity DROP CONSTRAINT constraint_admin_event_entity;
       public                 keycloak    false    251            �           2606    17068 1   authenticator_config_entry constraint_auth_cfg_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);
 [   ALTER TABLE ONLY public.authenticator_config_entry DROP CONSTRAINT constraint_auth_cfg_pk;
       public                 keycloak    false    255    255            �           2606    17066 0   authentication_execution constraint_auth_exec_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.authentication_execution DROP CONSTRAINT constraint_auth_exec_pk;
       public                 keycloak    false    254            �           2606    17064 +   authentication_flow constraint_auth_flow_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.authentication_flow DROP CONSTRAINT constraint_auth_flow_pk;
       public                 keycloak    false    253            �           2606    17062 '   authenticator_config constraint_auth_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.authenticator_config DROP CONSTRAINT constraint_auth_pk;
       public                 keycloak    false    252            q           2606    16569    user_role_mapping constraint_c 
   CONSTRAINT     j   ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);
 H   ALTER TABLE ONLY public.user_role_mapping DROP CONSTRAINT constraint_c;
       public                 keycloak    false    236    236            6           2606    17686 (   composite_role constraint_composite_role 
   CONSTRAINT     y   ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);
 R   ALTER TABLE ONLY public.composite_role DROP CONSTRAINT constraint_composite_role;
       public                 keycloak    false    220    220            �           2606    16841 %   identity_provider_config constraint_d 
   CONSTRAINT     {   ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);
 O   ALTER TABLE ONLY public.identity_provider_config DROP CONSTRAINT constraint_d;
       public                 keycloak    false    244    244            �           2606    17409    policy_config constraint_dpc 
   CONSTRAINT     g   ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);
 F   ALTER TABLE ONLY public.policy_config DROP CONSTRAINT constraint_dpc;
       public                 keycloak    false    274    274            S           2606    16571    realm_smtp_config constraint_e 
   CONSTRAINT     h   ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);
 H   ALTER TABLE ONLY public.realm_smtp_config DROP CONSTRAINT constraint_e;
       public                 keycloak    false    228    228            :           2606    16573    credential constraint_f 
   CONSTRAINT     U   ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.credential DROP CONSTRAINT constraint_f;
       public                 keycloak    false    221            i           2606    16575 $   user_federation_config constraint_f9 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);
 N   ALTER TABLE ONLY public.user_federation_config DROP CONSTRAINT constraint_f9;
       public                 keycloak    false    233    233            ;           2606    17828 ,   resource_server_perm_ticket constraint_fapmt 
   CONSTRAINT     j   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT constraint_fapmt;
       public                 keycloak    false    295            �           2606    17367 )   resource_server_resource constraint_farsr 
   CONSTRAINT     g   ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.resource_server_resource DROP CONSTRAINT constraint_farsr;
       public                 keycloak    false    271            �           2606    17395 (   resource_server_policy constraint_farsrp 
   CONSTRAINT     f   ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.resource_server_policy DROP CONSTRAINT constraint_farsrp;
       public                 keycloak    false    273                        2606    17464 %   associated_policy constraint_farsrpap 
   CONSTRAINT     �   ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);
 O   ALTER TABLE ONLY public.associated_policy DROP CONSTRAINT constraint_farsrpap;
       public                 keycloak    false    278    278            �           2606    17434 "   resource_policy constraint_farsrpp 
   CONSTRAINT     t   ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);
 L   ALTER TABLE ONLY public.resource_policy DROP CONSTRAINT constraint_farsrpp;
       public                 keycloak    false    276    276            �           2606    17381 '   resource_server_scope constraint_farsrs 
   CONSTRAINT     e   ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.resource_server_scope DROP CONSTRAINT constraint_farsrs;
       public                 keycloak    false    272            �           2606    17419 !   resource_scope constraint_farsrsp 
   CONSTRAINT     r   ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);
 K   ALTER TABLE ONLY public.resource_scope DROP CONSTRAINT constraint_farsrsp;
       public                 keycloak    false    275    275            �           2606    17449     scope_policy constraint_farsrsps 
   CONSTRAINT     o   ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);
 J   ALTER TABLE ONLY public.scope_policy DROP CONSTRAINT constraint_farsrsps;
       public                 keycloak    false    277    277            a           2606    16577    user_entity constraint_fb 
   CONSTRAINT     W   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT constraint_fb;
       public                 keycloak    false    232            �           2606    17076 9   user_federation_mapper_config constraint_fedmapper_cfg_pm 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);
 c   ALTER TABLE ONLY public.user_federation_mapper_config DROP CONSTRAINT constraint_fedmapper_cfg_pm;
       public                 keycloak    false    257    257            �           2606    17074 -   user_federation_mapper constraint_fedmapperpm 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.user_federation_mapper DROP CONSTRAINT constraint_fedmapperpm;
       public                 keycloak    false    256            9           2606    17812 6   fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm 
   CONSTRAINT     �   ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);
 `   ALTER TABLE ONLY public.fed_user_consent_cl_scope DROP CONSTRAINT constraint_fgrntcsnt_clsc_pm;
       public                 keycloak    false    294    294            5           2606    17802 5   user_consent_client_scope constraint_grntcsnt_clsc_pm 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);
 _   ALTER TABLE ONLY public.user_consent_client_scope DROP CONSTRAINT constraint_grntcsnt_clsc_pm;
       public                 keycloak    false    293    293            �           2606    16949 #   user_consent constraint_grntcsnt_pm 
   CONSTRAINT     a   ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.user_consent DROP CONSTRAINT constraint_grntcsnt_pm;
       public                 keycloak    false    250            �           2606    17218    keycloak_group constraint_group 
   CONSTRAINT     ]   ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.keycloak_group DROP CONSTRAINT constraint_group;
       public                 keycloak    false    262            �           2606    17225 -   group_attribute constraint_group_attribute_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.group_attribute DROP CONSTRAINT constraint_group_attribute_pk;
       public                 keycloak    false    264            �           2606    17239 (   group_role_mapping constraint_group_role 
   CONSTRAINT     u   ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);
 R   ALTER TABLE ONLY public.group_role_mapping DROP CONSTRAINT constraint_group_role;
       public                 keycloak    false    263    263            �           2606    16945 (   identity_provider_mapper constraint_idpm 
   CONSTRAINT     f   ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.identity_provider_mapper DROP CONSTRAINT constraint_idpm;
       public                 keycloak    false    248            �           2606    17125 '   idp_mapper_config constraint_idpmconfig 
   CONSTRAINT     v   ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);
 Q   ALTER TABLE ONLY public.idp_mapper_config DROP CONSTRAINT constraint_idpmconfig;
       public                 keycloak    false    249    249            X           2606    18014 $   jgroups_ping constraint_jgroups_ping 
   CONSTRAINT     g   ALTER TABLE ONLY public.jgroups_ping
    ADD CONSTRAINT constraint_jgroups_ping PRIMARY KEY (address);
 N   ALTER TABLE ONLY public.jgroups_ping DROP CONSTRAINT constraint_jgroups_ping;
       public                 keycloak    false    303            �           2606    16943 !   migration_model constraint_migmod 
   CONSTRAINT     _   ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.migration_model DROP CONSTRAINT constraint_migmod;
       public                 keycloak    false    247            �           2606    17906 1   offline_client_session constraint_offl_cl_ses_pk3 
   CONSTRAINT     �   ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);
 [   ALTER TABLE ONLY public.offline_client_session DROP CONSTRAINT constraint_offl_cl_ses_pk3;
       public                 keycloak    false    261    261    261    261    261            �           2606    17195 /   offline_user_session constraint_offl_us_ses_pk2 
   CONSTRAINT     �   ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);
 Y   ALTER TABLE ONLY public.offline_user_session DROP CONSTRAINT constraint_offl_us_ses_pk2;
       public                 keycloak    false    260    260            |           2606    16835    protocol_mapper constraint_pcm 
   CONSTRAINT     \   ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.protocol_mapper DROP CONSTRAINT constraint_pcm;
       public                 keycloak    false    240            �           2606    17118 *   protocol_mapper_config constraint_pmconfig 
   CONSTRAINT     ~   ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);
 T   ALTER TABLE ONLY public.protocol_mapper_config DROP CONSTRAINT constraint_pmconfig;
       public                 keycloak    false    241    241            U           2606    17711 &   redirect_uris constraint_redirect_uris 
   CONSTRAINT     r   ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);
 P   ALTER TABLE ONLY public.redirect_uris DROP CONSTRAINT constraint_redirect_uris;
       public                 keycloak    false    229    229            �           2606    17158 0   required_action_config constraint_req_act_cfg_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);
 Z   ALTER TABLE ONLY public.required_action_config DROP CONSTRAINT constraint_req_act_cfg_pk;
       public                 keycloak    false    259    259            �           2606    17156 2   required_action_provider constraint_req_act_prv_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.required_action_provider DROP CONSTRAINT constraint_req_act_prv_pk;
       public                 keycloak    false    258            n           2606    17070 /   user_required_action constraint_required_action 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);
 Y   ALTER TABLE ONLY public.user_required_action DROP CONSTRAINT constraint_required_action;
       public                 keycloak    false    235    235            C           2606    17875 '   resource_uris constraint_resour_uris_pk 
   CONSTRAINT     u   ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);
 Q   ALTER TABLE ONLY public.resource_uris DROP CONSTRAINT constraint_resour_uris_pk;
       public                 keycloak    false    297    297            E           2606    17882 +   role_attribute constraint_role_attribute_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.role_attribute DROP CONSTRAINT constraint_role_attribute_pk;
       public                 keycloak    false    298            U           2606    18003    revoked_token constraint_rt 
   CONSTRAINT     Y   ALTER TABLE ONLY public.revoked_token
    ADD CONSTRAINT constraint_rt PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.revoked_token DROP CONSTRAINT constraint_rt;
       public                 keycloak    false    302            [           2606    17154 +   user_attribute constraint_user_attribute_pk 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.user_attribute DROP CONSTRAINT constraint_user_attribute_pk;
       public                 keycloak    false    231            �           2606    17232 +   user_group_membership constraint_user_group 
   CONSTRAINT     x   ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);
 U   ALTER TABLE ONLY public.user_group_membership DROP CONSTRAINT constraint_user_group;
       public                 keycloak    false    265    265            t           2606    17713 "   web_origins constraint_web_origins 
   CONSTRAINT     n   ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);
 L   ALTER TABLE ONLY public.web_origins DROP CONSTRAINT constraint_web_origins;
       public                 keycloak    false    237    237            /           2606    16389 0   databasechangeloglock databasechangeloglock_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.databasechangeloglock DROP CONSTRAINT databasechangeloglock_pkey;
       public                 keycloak    false    217            �           2606    17335 '   client_scope_attributes pk_cl_tmpl_attr 
   CONSTRAINT     q   ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);
 Q   ALTER TABLE ONLY public.client_scope_attributes DROP CONSTRAINT pk_cl_tmpl_attr;
       public                 keycloak    false    268    268            �           2606    17294    client_scope pk_cli_template 
   CONSTRAINT     Z   ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.client_scope DROP CONSTRAINT pk_cli_template;
       public                 keycloak    false    267            �           2606    17666 "   resource_server pk_resource_server 
   CONSTRAINT     `   ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.resource_server DROP CONSTRAINT pk_resource_server;
       public                 keycloak    false    270            �           2606    17323 +   client_scope_role_mapping pk_template_scope 
   CONSTRAINT     x   ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);
 U   ALTER TABLE ONLY public.client_scope_role_mapping DROP CONSTRAINT pk_template_scope;
       public                 keycloak    false    269    269            3           2606    17787 )   default_client_scope r_def_cli_scope_bind 
   CONSTRAINT     w   ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);
 S   ALTER TABLE ONLY public.default_client_scope DROP CONSTRAINT r_def_cli_scope_bind;
       public                 keycloak    false    292    292            H           2606    17923 ,   realm_localizations realm_localizations_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);
 V   ALTER TABLE ONLY public.realm_localizations DROP CONSTRAINT realm_localizations_pkey;
       public                 keycloak    false    299    299            A           2606    17855    resource_attribute res_attr_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.resource_attribute DROP CONSTRAINT res_attr_pk;
       public                 keycloak    false    296            �           2606    17595    keycloak_group sibling_names 
   CONSTRAINT     o   ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);
 F   ALTER TABLE ONLY public.keycloak_group DROP CONSTRAINT sibling_names;
       public                 keycloak    false    262    262    262            �           2606    16892 /   identity_provider uk_2daelwnibji49avxsrtuf6xj33 
   CONSTRAINT     ~   ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);
 Y   ALTER TABLE ONLY public.identity_provider DROP CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33;
       public                 keycloak    false    243    243            4           2606    16581 #   client uk_b71cjlbenv945rb6gcon438at 
   CONSTRAINT     m   ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);
 M   ALTER TABLE ONLY public.client DROP CONSTRAINT uk_b71cjlbenv945rb6gcon438at;
       public                 keycloak    false    219    219            �           2606    17740    client_scope uk_cli_scope 
   CONSTRAINT     ^   ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);
 C   ALTER TABLE ONLY public.client_scope DROP CONSTRAINT uk_cli_scope;
       public                 keycloak    false    267    267            e           2606    16585 (   user_entity uk_dykn684sl8up1crfei6eckhd7 
   CONSTRAINT     y   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);
 R   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT uk_dykn684sl8up1crfei6eckhd7;
       public                 keycloak    false    232    232            �           2606    17992     user_consent uk_external_consent 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_external_consent UNIQUE (client_storage_provider, external_client_id, user_id);
 J   ALTER TABLE ONLY public.user_consent DROP CONSTRAINT uk_external_consent;
       public                 keycloak    false    250    250    250            �           2606    17914 4   resource_server_resource uk_frsr6t700s9v50bu18ws5ha6 
   CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);
 ^   ALTER TABLE ONLY public.resource_server_resource DROP CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6;
       public                 keycloak    false    271    271    271            ?           2606    17910 7   resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt 
   CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);
 a   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt;
       public                 keycloak    false    295    295    295    295    295            �           2606    17657 2   resource_server_policy uk_frsrpt700s9v50bu18ws5ha6 
   CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);
 \   ALTER TABLE ONLY public.resource_server_policy DROP CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6;
       public                 keycloak    false    273    273            �           2606    17661 1   resource_server_scope uk_frsrst700s9v50bu18ws5ha6 
   CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);
 [   ALTER TABLE ONLY public.resource_server_scope DROP CONSTRAINT uk_frsrst700s9v50bu18ws5ha6;
       public                 keycloak    false    272    272            �           2606    17990    user_consent uk_local_consent 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_local_consent UNIQUE (client_id, user_id);
 G   ALTER TABLE ONLY public.user_consent DROP CONSTRAINT uk_local_consent;
       public                 keycloak    false    250    250            L           2606    17996    org uk_org_alias 
   CONSTRAINT     V   ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_alias UNIQUE (realm_id, alias);
 :   ALTER TABLE ONLY public.org DROP CONSTRAINT uk_org_alias;
       public                 keycloak    false    300    300            N           2606    17981    org uk_org_group 
   CONSTRAINT     O   ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_group UNIQUE (group_id);
 :   ALTER TABLE ONLY public.org DROP CONSTRAINT uk_org_group;
       public                 keycloak    false    300            P           2606    17979    org uk_org_name 
   CONSTRAINT     T   ALTER TABLE ONLY public.org
    ADD CONSTRAINT uk_org_name UNIQUE (realm_id, name);
 9   ALTER TABLE ONLY public.org DROP CONSTRAINT uk_org_name;
       public                 keycloak    false    300    300            I           2606    16593 "   realm uk_orvsdmla56612eaefiq6wl5oi 
   CONSTRAINT     ]   ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);
 L   ALTER TABLE ONLY public.realm DROP CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi;
       public                 keycloak    false    224            g           2606    17585 (   user_entity uk_ru8tt6t700s9v50bu18ws5ha6 
   CONSTRAINT     q   ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);
 R   ALTER TABLE ONLY public.user_entity DROP CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6;
       public                 keycloak    false    232    232                       1259    17963    fed_user_attr_long_values    INDEX     i   CREATE INDEX fed_user_attr_long_values ON public.fed_user_attribute USING btree (long_value_hash, name);
 -   DROP INDEX public.fed_user_attr_long_values;
       public                 keycloak    false    280    280                       1259    17965 $   fed_user_attr_long_values_lower_case    INDEX        CREATE INDEX fed_user_attr_long_values_lower_case ON public.fed_user_attribute USING btree (long_value_hash_lower_case, name);
 8   DROP INDEX public.fed_user_attr_long_values_lower_case;
       public                 keycloak    false    280    280            �           1259    17939    idx_admin_event_time    INDEX     i   CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);
 (   DROP INDEX public.idx_admin_event_time;
       public                 keycloak    false    251    251                       1259    17609    idx_assoc_pol_assoc_pol_id    INDEX     h   CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);
 .   DROP INDEX public.idx_assoc_pol_assoc_pol_id;
       public                 keycloak    false    278            �           1259    17613    idx_auth_config_realm    INDEX     Z   CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);
 )   DROP INDEX public.idx_auth_config_realm;
       public                 keycloak    false    252            �           1259    17611    idx_auth_exec_flow    INDEX     Z   CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);
 &   DROP INDEX public.idx_auth_exec_flow;
       public                 keycloak    false    254            �           1259    17610    idx_auth_exec_realm_flow    INDEX     j   CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);
 ,   DROP INDEX public.idx_auth_exec_realm_flow;
       public                 keycloak    false    254    254            �           1259    17612    idx_auth_flow_realm    INDEX     W   CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);
 '   DROP INDEX public.idx_auth_flow_realm;
       public                 keycloak    false    253            .           1259    17930    idx_cl_clscope    INDEX     R   CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);
 "   DROP INDEX public.idx_cl_clscope;
       public                 keycloak    false    291            x           1259    17966    idx_client_att_by_name_value    INDEX     q   CREATE INDEX idx_client_att_by_name_value ON public.client_attributes USING btree (name, substr(value, 1, 255));
 0   DROP INDEX public.idx_client_att_by_name_value;
       public                 keycloak    false    238    238            2           1259    17915    idx_client_id    INDEX     E   CREATE INDEX idx_client_id ON public.client USING btree (client_id);
 !   DROP INDEX public.idx_client_id;
       public                 keycloak    false    219            )           1259    17654    idx_client_init_acc_realm    INDEX     _   CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);
 -   DROP INDEX public.idx_client_init_acc_realm;
       public                 keycloak    false    289            �           1259    17817    idx_clscope_attrs    INDEX     Y   CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);
 %   DROP INDEX public.idx_clscope_attrs;
       public                 keycloak    false    268            /           1259    17927    idx_clscope_cl    INDEX     S   CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);
 "   DROP INDEX public.idx_clscope_cl;
       public                 keycloak    false    291            }           1259    17814    idx_clscope_protmap    INDEX     Z   CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);
 '   DROP INDEX public.idx_clscope_protmap;
       public                 keycloak    false    240            �           1259    17815    idx_clscope_role    INDEX     Z   CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);
 $   DROP INDEX public.idx_clscope_role;
       public                 keycloak    false    269                        1259    17619    idx_compo_config_compo    INDEX     [   CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);
 *   DROP INDEX public.idx_compo_config_compo;
       public                 keycloak    false    286            #           1259    17889    idx_component_provider_type    INDEX     Z   CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);
 /   DROP INDEX public.idx_component_provider_type;
       public                 keycloak    false    287            $           1259    17618    idx_component_realm    INDEX     M   CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);
 '   DROP INDEX public.idx_component_realm;
       public                 keycloak    false    287            7           1259    17620    idx_composite    INDEX     M   CREATE INDEX idx_composite ON public.composite_role USING btree (composite);
 !   DROP INDEX public.idx_composite;
       public                 keycloak    false    220            8           1259    17621    idx_composite_child    INDEX     T   CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);
 '   DROP INDEX public.idx_composite_child;
       public                 keycloak    false    220            0           1259    17821    idx_defcls_realm    INDEX     U   CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);
 $   DROP INDEX public.idx_defcls_realm;
       public                 keycloak    false    292            1           1259    17822    idx_defcls_scope    INDEX     U   CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);
 $   DROP INDEX public.idx_defcls_scope;
       public                 keycloak    false    292            >           1259    17916    idx_event_time    INDEX     W   CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);
 "   DROP INDEX public.idx_event_time;
       public                 keycloak    false    222    222            �           1259    17352    idx_fedidentity_feduser    INDEX     c   CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);
 +   DROP INDEX public.idx_fedidentity_feduser;
       public                 keycloak    false    242            �           1259    17351    idx_fedidentity_user    INDEX     V   CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);
 (   DROP INDEX public.idx_fedidentity_user;
       public                 keycloak    false    242                       1259    17714    idx_fu_attribute    INDEX     b   CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);
 $   DROP INDEX public.idx_fu_attribute;
       public                 keycloak    false    280    280    280                       1259    17734    idx_fu_cnsnt_ext    INDEX     }   CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);
 $   DROP INDEX public.idx_fu_cnsnt_ext;
       public                 keycloak    false    281    281    281                       1259    17898    idx_fu_consent    INDEX     Y   CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);
 "   DROP INDEX public.idx_fu_consent;
       public                 keycloak    false    281    281                       1259    17716    idx_fu_consent_ru    INDEX     [   CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);
 %   DROP INDEX public.idx_fu_consent_ru;
       public                 keycloak    false    281    281                       1259    17717    idx_fu_credential    INDEX     Z   CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);
 %   DROP INDEX public.idx_fu_credential;
       public                 keycloak    false    282    282                       1259    17718    idx_fu_credential_ru    INDEX     a   CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);
 (   DROP INDEX public.idx_fu_credential_ru;
       public                 keycloak    false    282    282                       1259    17719    idx_fu_group_membership    INDEX     j   CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);
 +   DROP INDEX public.idx_fu_group_membership;
       public                 keycloak    false    283    283                       1259    17720    idx_fu_group_membership_ru    INDEX     m   CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);
 .   DROP INDEX public.idx_fu_group_membership_ru;
       public                 keycloak    false    283    283                       1259    17721    idx_fu_required_action    INDEX     o   CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);
 *   DROP INDEX public.idx_fu_required_action;
       public                 keycloak    false    284    284                       1259    17722    idx_fu_required_action_ru    INDEX     k   CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);
 -   DROP INDEX public.idx_fu_required_action_ru;
       public                 keycloak    false    284    284                       1259    17723    idx_fu_role_mapping    INDEX     a   CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);
 '   DROP INDEX public.idx_fu_role_mapping;
       public                 keycloak    false    285    285                       1259    17724    idx_fu_role_mapping_ru    INDEX     e   CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);
 *   DROP INDEX public.idx_fu_role_mapping_ru;
       public                 keycloak    false    285    285            �           1259    17941    idx_group_att_by_name_value    INDEX     z   CREATE INDEX idx_group_att_by_name_value ON public.group_attribute USING btree (name, ((value)::character varying(250)));
 /   DROP INDEX public.idx_group_att_by_name_value;
       public                 keycloak    false    264    264            �           1259    17624    idx_group_attr_group    INDEX     T   CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);
 (   DROP INDEX public.idx_group_attr_group;
       public                 keycloak    false    264            �           1259    17626    idx_group_role_mapp_group    INDEX     \   CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);
 -   DROP INDEX public.idx_group_role_mapp_group;
       public                 keycloak    false    263            �           1259    17628    idx_id_prov_mapp_realm    INDEX     _   CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);
 *   DROP INDEX public.idx_id_prov_mapp_realm;
       public                 keycloak    false    248            �           1259    17627    idx_ident_prov_realm    INDEX     V   CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);
 (   DROP INDEX public.idx_ident_prov_realm;
       public                 keycloak    false    243            �           1259    18007    idx_idp_for_login    INDEX     �   CREATE INDEX idx_idp_for_login ON public.identity_provider USING btree (realm_id, enabled, link_only, hide_on_login, organization_id);
 %   DROP INDEX public.idx_idp_for_login;
       public                 keycloak    false    243    243    243    243    243            �           1259    18006    idx_idp_realm_org    INDEX     d   CREATE INDEX idx_idp_realm_org ON public.identity_provider USING btree (realm_id, organization_id);
 %   DROP INDEX public.idx_idp_realm_org;
       public                 keycloak    false    243    243            C           1259    17629    idx_keycloak_role_client    INDEX     T   CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);
 ,   DROP INDEX public.idx_keycloak_role_client;
       public                 keycloak    false    223            D           1259    17630    idx_keycloak_role_realm    INDEX     R   CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);
 +   DROP INDEX public.idx_keycloak_role_realm;
       public                 keycloak    false    223            �           1259    17970 $   idx_offline_uss_by_broker_session_id    INDEX     |   CREATE INDEX idx_offline_uss_by_broker_session_id ON public.offline_user_session USING btree (broker_session_id, realm_id);
 8   DROP INDEX public.idx_offline_uss_by_broker_session_id;
       public                 keycloak    false    260    260            �           1259    17969 '   idx_offline_uss_by_last_session_refresh    INDEX     �   CREATE INDEX idx_offline_uss_by_last_session_refresh ON public.offline_user_session USING btree (realm_id, offline_flag, last_session_refresh);
 ;   DROP INDEX public.idx_offline_uss_by_last_session_refresh;
       public                 keycloak    false    260    260    260            �           1259    17934    idx_offline_uss_by_user    INDEX     s   CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);
 +   DROP INDEX public.idx_offline_uss_by_user;
       public                 keycloak    false    260    260    260            S           1259    17998    idx_org_domain_org_id    INDEX     N   CREATE INDEX idx_org_domain_org_id ON public.org_domain USING btree (org_id);
 )   DROP INDEX public.idx_org_domain_org_id;
       public                 keycloak    false    301            <           1259    17994    idx_perm_ticket_owner    INDEX     ^   CREATE INDEX idx_perm_ticket_owner ON public.resource_server_perm_ticket USING btree (owner);
 )   DROP INDEX public.idx_perm_ticket_owner;
       public                 keycloak    false    295            =           1259    17993    idx_perm_ticket_requester    INDEX     f   CREATE INDEX idx_perm_ticket_requester ON public.resource_server_perm_ticket USING btree (requester);
 -   DROP INDEX public.idx_perm_ticket_requester;
       public                 keycloak    false    295            ~           1259    17631    idx_protocol_mapper_client    INDEX     [   CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);
 .   DROP INDEX public.idx_protocol_mapper_client;
       public                 keycloak    false    240            L           1259    17634    idx_realm_attr_realm    INDEX     T   CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);
 (   DROP INDEX public.idx_realm_attr_realm;
       public                 keycloak    false    225            �           1259    17813    idx_realm_clscope    INDEX     N   CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);
 %   DROP INDEX public.idx_realm_clscope;
       public                 keycloak    false    267            �           1259    17635    idx_realm_def_grp_realm    INDEX     \   CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);
 +   DROP INDEX public.idx_realm_def_grp_realm;
       public                 keycloak    false    266            O           1259    17638    idx_realm_evt_list_realm    INDEX     _   CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);
 ,   DROP INDEX public.idx_realm_evt_list_realm;
       public                 keycloak    false    226            �           1259    17637    idx_realm_evt_types_realm    INDEX     c   CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);
 -   DROP INDEX public.idx_realm_evt_types_realm;
       public                 keycloak    false    246            G           1259    17633    idx_realm_master_adm_cli    INDEX     Y   CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);
 ,   DROP INDEX public.idx_realm_master_adm_cli;
       public                 keycloak    false    224            �           1259    17639    idx_realm_supp_local_realm    INDEX     b   CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);
 .   DROP INDEX public.idx_realm_supp_local_realm;
       public                 keycloak    false    245            V           1259    17640    idx_redir_uri_client    INDEX     S   CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);
 (   DROP INDEX public.idx_redir_uri_client;
       public                 keycloak    false    229            �           1259    17641    idx_req_act_prov_realm    INDEX     _   CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);
 *   DROP INDEX public.idx_req_act_prov_realm;
       public                 keycloak    false    258            �           1259    17642    idx_res_policy_policy    INDEX     V   CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);
 )   DROP INDEX public.idx_res_policy_policy;
       public                 keycloak    false    276            �           1259    17643    idx_res_scope_scope    INDEX     R   CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);
 '   DROP INDEX public.idx_res_scope_scope;
       public                 keycloak    false    275            �           1259    17662    idx_res_serv_pol_res_serv    INDEX     j   CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);
 -   DROP INDEX public.idx_res_serv_pol_res_serv;
       public                 keycloak    false    273            �           1259    17663    idx_res_srv_res_res_srv    INDEX     j   CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);
 +   DROP INDEX public.idx_res_srv_res_res_srv;
       public                 keycloak    false    271            �           1259    17664    idx_res_srv_scope_res_srv    INDEX     i   CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);
 -   DROP INDEX public.idx_res_srv_scope_res_srv;
       public                 keycloak    false    272            V           1259    18004    idx_rev_token_on_expire    INDEX     S   CREATE INDEX idx_rev_token_on_expire ON public.revoked_token USING btree (expire);
 +   DROP INDEX public.idx_rev_token_on_expire;
       public                 keycloak    false    302            F           1259    17888    idx_role_attribute    INDEX     P   CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);
 &   DROP INDEX public.idx_role_attribute;
       public                 keycloak    false    298            �           1259    17816    idx_role_clscope    INDEX     Y   CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);
 $   DROP INDEX public.idx_role_clscope;
       public                 keycloak    false    269            Y           1259    17647    idx_scope_mapping_role    INDEX     S   CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);
 *   DROP INDEX public.idx_scope_mapping_role;
       public                 keycloak    false    230            �           1259    17648    idx_scope_policy_policy    INDEX     U   CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);
 +   DROP INDEX public.idx_scope_policy_policy;
       public                 keycloak    false    277            �           1259    17896    idx_update_time    INDEX     R   CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);
 #   DROP INDEX public.idx_update_time;
       public                 keycloak    false    247            6           1259    17823    idx_usconsent_clscope    INDEX     f   CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);
 )   DROP INDEX public.idx_usconsent_clscope;
       public                 keycloak    false    293            7           1259    17940    idx_usconsent_scope_id    INDEX     `   CREATE INDEX idx_usconsent_scope_id ON public.user_consent_client_scope USING btree (scope_id);
 *   DROP INDEX public.idx_usconsent_scope_id;
       public                 keycloak    false    293            \           1259    17348    idx_user_attribute    INDEX     P   CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);
 &   DROP INDEX public.idx_user_attribute;
       public                 keycloak    false    231            ]           1259    17937    idx_user_attribute_name    INDEX     Y   CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);
 +   DROP INDEX public.idx_user_attribute_name;
       public                 keycloak    false    231    231            �           1259    17345    idx_user_consent    INDEX     L   CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);
 $   DROP INDEX public.idx_user_consent;
       public                 keycloak    false    250            ;           1259    17349    idx_user_credential    INDEX     M   CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);
 '   DROP INDEX public.idx_user_credential;
       public                 keycloak    false    221            b           1259    17342    idx_user_email    INDEX     G   CREATE INDEX idx_user_email ON public.user_entity USING btree (email);
 "   DROP INDEX public.idx_user_email;
       public                 keycloak    false    232            �           1259    17344    idx_user_group_mapping    INDEX     [   CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);
 *   DROP INDEX public.idx_user_group_mapping;
       public                 keycloak    false    265            o           1259    17350    idx_user_reqactions    INDEX     W   CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);
 '   DROP INDEX public.idx_user_reqactions;
       public                 keycloak    false    235            r           1259    17343    idx_user_role_mapping    INDEX     V   CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);
 )   DROP INDEX public.idx_user_role_mapping;
       public                 keycloak    false    236            c           1259    17938    idx_user_service_account    INDEX     q   CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);
 ,   DROP INDEX public.idx_user_service_account;
       public                 keycloak    false    232    232            �           1259    17650    idx_usr_fed_map_fed_prv    INDEX     l   CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);
 +   DROP INDEX public.idx_usr_fed_map_fed_prv;
       public                 keycloak    false    256            �           1259    17651    idx_usr_fed_map_realm    INDEX     \   CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);
 )   DROP INDEX public.idx_usr_fed_map_realm;
       public                 keycloak    false    256            l           1259    17652    idx_usr_fed_prv_realm    INDEX     ^   CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);
 )   DROP INDEX public.idx_usr_fed_prv_realm;
       public                 keycloak    false    234            u           1259    17653    idx_web_orig_client    INDEX     P   CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);
 '   DROP INDEX public.idx_web_orig_client;
       public                 keycloak    false    237            ^           1259    17962    user_attr_long_values    INDEX     a   CREATE INDEX user_attr_long_values ON public.user_attribute USING btree (long_value_hash, name);
 )   DROP INDEX public.user_attr_long_values;
       public                 keycloak    false    231    231            _           1259    17964     user_attr_long_values_lower_case    INDEX     w   CREATE INDEX user_attr_long_values_lower_case ON public.user_attribute USING btree (long_value_hash_lower_case, name);
 4   DROP INDEX public.user_attr_long_values_lower_case;
       public                 keycloak    false    231    231            o           2606    16846 $   identity_provider fk2b4ebc52ae5c3b34    FK CONSTRAINT     �   ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 N   ALTER TABLE ONLY public.identity_provider DROP CONSTRAINT fk2b4ebc52ae5c3b34;
       public               keycloak    false    224    243    3654            i           2606    16776 $   client_attributes fk3c47c64beacca966    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);
 N   ALTER TABLE ONLY public.client_attributes DROP CONSTRAINT fk3c47c64beacca966;
       public               keycloak    false    219    238    3633            n           2606    16856 %   federated_identity fk404288b92ef007a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 O   ALTER TABLE ONLY public.federated_identity DROP CONSTRAINT fk404288b92ef007a6;
       public               keycloak    false    232    3681    242            j           2606    17003 ,   client_node_registrations fk4129723ba992f594    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);
 V   ALTER TABLE ONLY public.client_node_registrations DROP CONSTRAINT fk4129723ba992f594;
       public               keycloak    false    239    219    3633            a           2606    16601 *   redirect_uris fk_1burs8pb4ouj97h5wuppahv9f    FK CONSTRAINT     �   ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);
 T   ALTER TABLE ONLY public.redirect_uris DROP CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f;
       public               keycloak    false    229    219    3633            e           2606    16606 5   user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 _   ALTER TABLE ONLY public.user_federation_provider DROP CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8;
       public               keycloak    false    234    224    3654            _           2606    16616 6   realm_required_credential fk_5hg65lybevavkqfki3kponh9v    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 `   ALTER TABLE ONLY public.realm_required_credential DROP CONSTRAINT fk_5hg65lybevavkqfki3kponh9v;
       public               keycloak    false    224    3654    227            �           2606    17856 /   resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);
 Y   ALTER TABLE ONLY public.resource_attribute DROP CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr;
       public               keycloak    false    3814    296    271            c           2606    16621 +   user_attribute fk_5hrm2vlf9ql5fu043kqepovbr    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 U   ALTER TABLE ONLY public.user_attribute DROP CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr;
       public               keycloak    false    231    232    3681            f           2606    16631 1   user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 [   ALTER TABLE ONLY public.user_required_action DROP CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd;
       public               keycloak    false    3681    232    235            \           2606    16636 *   keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c    FK CONSTRAINT     �   ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);
 T   ALTER TABLE ONLY public.keycloak_role DROP CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c;
       public               keycloak    false    223    224    3654            `           2606    16641 .   realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 X   ALTER TABLE ONLY public.realm_smtp_config DROP CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o;
       public               keycloak    false    3654    224    228            ]           2606    16656 ,   realm_attribute fk_8shxd6l3e9atqukacxgpffptw    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 V   ALTER TABLE ONLY public.realm_attribute DROP CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw;
       public               keycloak    false    225    224    3654            Y           2606    16661 +   composite_role fk_a63wvekftu8jo1pnj81e7mce2    FK CONSTRAINT     �   ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);
 U   ALTER TABLE ONLY public.composite_role DROP CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2;
       public               keycloak    false    220    3650    223            x           2606    17097 *   authentication_execution fk_auth_exec_flow    FK CONSTRAINT     �   ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);
 T   ALTER TABLE ONLY public.authentication_execution DROP CONSTRAINT fk_auth_exec_flow;
       public               keycloak    false    254    3754    253            y           2606    17092 +   authentication_execution fk_auth_exec_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 U   ALTER TABLE ONLY public.authentication_execution DROP CONSTRAINT fk_auth_exec_realm;
       public               keycloak    false    224    3654    254            w           2606    17087 &   authentication_flow fk_auth_flow_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 P   ALTER TABLE ONLY public.authentication_flow DROP CONSTRAINT fk_auth_flow_realm;
       public               keycloak    false    3654    253    224            v           2606    17082 "   authenticator_config fk_auth_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 L   ALTER TABLE ONLY public.authenticator_config DROP CONSTRAINT fk_auth_realm;
       public               keycloak    false    3654    252    224            g           2606    16671 .   user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 X   ALTER TABLE ONLY public.user_role_mapping DROP CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l;
       public               keycloak    false    236    232    3681            �           2606    17761 .   client_scope_attributes fk_cl_scope_attr_scope    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);
 X   ALTER TABLE ONLY public.client_scope_attributes DROP CONSTRAINT fk_cl_scope_attr_scope;
       public               keycloak    false    268    267    3801            �           2606    17751 .   client_scope_role_mapping fk_cl_scope_rm_scope    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);
 X   ALTER TABLE ONLY public.client_scope_role_mapping DROP CONSTRAINT fk_cl_scope_rm_scope;
       public               keycloak    false    267    3801    269            k           2606    17746 #   protocol_mapper fk_cli_scope_mapper    FK CONSTRAINT     �   ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);
 M   ALTER TABLE ONLY public.protocol_mapper DROP CONSTRAINT fk_cli_scope_mapper;
       public               keycloak    false    240    267    3801            �           2606    17604 .   client_initial_access fk_client_init_acc_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 X   ALTER TABLE ONLY public.client_initial_access DROP CONSTRAINT fk_client_init_acc_realm;
       public               keycloak    false    224    3654    289            �           2606    17552 $   component_config fk_component_config    FK CONSTRAINT     �   ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);
 N   ALTER TABLE ONLY public.component_config DROP CONSTRAINT fk_component_config;
       public               keycloak    false    287    3874    286            �           2606    17547    component fk_component_realm    FK CONSTRAINT     |   ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 F   ALTER TABLE ONLY public.component DROP CONSTRAINT fk_component_realm;
       public               keycloak    false    224    287    3654            �           2606    17252 (   realm_default_groups fk_def_groups_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 R   ALTER TABLE ONLY public.realm_default_groups DROP CONSTRAINT fk_def_groups_realm;
       public               keycloak    false    3654    266    224            |           2606    17112 .   user_federation_mapper_config fk_fedmapper_cfg    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);
 X   ALTER TABLE ONLY public.user_federation_mapper_config DROP CONSTRAINT fk_fedmapper_cfg;
       public               keycloak    false    257    256    3763            z           2606    17107 ,   user_federation_mapper fk_fedmapperpm_fedprv    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);
 V   ALTER TABLE ONLY public.user_federation_mapper DROP CONSTRAINT fk_fedmapperpm_fedprv;
       public               keycloak    false    3691    256    234            {           2606    17102 +   user_federation_mapper fk_fedmapperpm_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 U   ALTER TABLE ONLY public.user_federation_mapper DROP CONSTRAINT fk_fedmapperpm_realm;
       public               keycloak    false    224    3654    256            �           2606    17470 .   associated_policy fk_frsr5s213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);
 X   ALTER TABLE ONLY public.associated_policy DROP CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy;
       public               keycloak    false    273    3824    278            �           2606    17455 )   scope_policy fk_frsrasp13xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);
 S   ALTER TABLE ONLY public.scope_policy DROP CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy;
       public               keycloak    false    273    277    3824            �           2606    17829 8   resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);
 b   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT fk_frsrho213xcx4wnkog82sspmt;
       public               keycloak    false    3812    270    295            �           2606    17672 5   resource_server_resource fk_frsrho213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);
 _   ALTER TABLE ONLY public.resource_server_resource DROP CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy;
       public               keycloak    false    271    270    3812            �           2606    17834 8   resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);
 b   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT fk_frsrho213xcx4wnkog83sspmt;
       public               keycloak    false    3814    295    271            �           2606    17839 8   resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);
 b   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT fk_frsrho213xcx4wnkog84sspmt;
       public               keycloak    false    272    295    3819            �           2606    17465 .   associated_policy fk_frsrpas14xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);
 X   ALTER TABLE ONLY public.associated_policy DROP CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy;
       public               keycloak    false    273    3824    278            �           2606    17450 )   scope_policy fk_frsrpass3xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);
 S   ALTER TABLE ONLY public.scope_policy DROP CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy;
       public               keycloak    false    272    277    3819            �           2606    17861 8   resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);
 b   ALTER TABLE ONLY public.resource_server_perm_ticket DROP CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy;
       public               keycloak    false    273    3824    295            �           2606    17667 3   resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);
 ]   ALTER TABLE ONLY public.resource_server_policy DROP CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy;
       public               keycloak    false    270    273    3812            �           2606    17420 +   resource_scope fk_frsrpos13xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);
 U   ALTER TABLE ONLY public.resource_scope DROP CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy;
       public               keycloak    false    271    275    3814            �           2606    17435 ,   resource_policy fk_frsrpos53xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);
 V   ALTER TABLE ONLY public.resource_policy DROP CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy;
       public               keycloak    false    271    276    3814            �           2606    17440 ,   resource_policy fk_frsrpp213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);
 V   ALTER TABLE ONLY public.resource_policy DROP CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy;
       public               keycloak    false    276    273    3824            �           2606    17425 +   resource_scope fk_frsrps213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);
 U   ALTER TABLE ONLY public.resource_scope DROP CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy;
       public               keycloak    false    272    275    3819            �           2606    17677 2   resource_server_scope fk_frsrso213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);
 \   ALTER TABLE ONLY public.resource_server_scope DROP CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy;
       public               keycloak    false    272    3812    270            Z           2606    16686 +   composite_role fk_gr7thllb9lu8q4vqa4524jjy8    FK CONSTRAINT     �   ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);
 U   ALTER TABLE ONLY public.composite_role DROP CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8;
       public               keycloak    false    3650    220    223            �           2606    17803 .   user_consent_client_scope fk_grntcsnt_clsc_usc    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);
 X   ALTER TABLE ONLY public.user_consent_client_scope DROP CONSTRAINT fk_grntcsnt_clsc_usc;
       public               keycloak    false    3741    293    250            u           2606    16966    user_consent fk_grntcsnt_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 G   ALTER TABLE ONLY public.user_consent DROP CONSTRAINT fk_grntcsnt_user;
       public               keycloak    false    232    3681    250                       2606    17226 (   group_attribute fk_group_attribute_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);
 R   ALTER TABLE ONLY public.group_attribute DROP CONSTRAINT fk_group_attribute_group;
       public               keycloak    false    3781    264    262            ~           2606    17240 &   group_role_mapping fk_group_role_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);
 P   ALTER TABLE ONLY public.group_role_mapping DROP CONSTRAINT fk_group_role_group;
       public               keycloak    false    262    3781    263            r           2606    16912 6   realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 `   ALTER TABLE ONLY public.realm_enabled_event_types DROP CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j;
       public               keycloak    false    246    224    3654            ^           2606    16696 3   realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 ]   ALTER TABLE ONLY public.realm_events_listeners DROP CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j;
       public               keycloak    false    224    226    3654            s           2606    16956 &   identity_provider_mapper fk_idpm_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 P   ALTER TABLE ONLY public.identity_provider_mapper DROP CONSTRAINT fk_idpm_realm;
       public               keycloak    false    224    248    3654            t           2606    17126    idp_mapper_config fk_idpmconfig    FK CONSTRAINT     �   ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);
 I   ALTER TABLE ONLY public.idp_mapper_config DROP CONSTRAINT fk_idpmconfig;
       public               keycloak    false    248    249    3736            h           2606    16706 (   web_origins fk_lojpho213xcx4wnkog82ssrfy    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);
 R   ALTER TABLE ONLY public.web_origins DROP CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy;
       public               keycloak    false    219    3633    237            b           2606    16716 *   scope_mapping fk_ouse064plmlr732lxjcn1q5f1    FK CONSTRAINT     �   ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);
 T   ALTER TABLE ONLY public.scope_mapping DROP CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1;
       public               keycloak    false    230    3633    219            l           2606    16851    protocol_mapper fk_pcm_realm    FK CONSTRAINT     ~   ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);
 F   ALTER TABLE ONLY public.protocol_mapper DROP CONSTRAINT fk_pcm_realm;
       public               keycloak    false    240    219    3633            [           2606    16731 '   credential fk_pfyr0glasqyl0dei3kl69r6v0    FK CONSTRAINT     �   ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 Q   ALTER TABLE ONLY public.credential DROP CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0;
       public               keycloak    false    232    3681    221            m           2606    17119 "   protocol_mapper_config fk_pmconfig    FK CONSTRAINT     �   ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);
 L   ALTER TABLE ONLY public.protocol_mapper_config DROP CONSTRAINT fk_pmconfig;
       public               keycloak    false    240    241    3708            �           2606    17788 -   default_client_scope fk_r_def_cli_scope_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 W   ALTER TABLE ONLY public.default_client_scope DROP CONSTRAINT fk_r_def_cli_scope_realm;
       public               keycloak    false    292    224    3654            }           2606    17161 )   required_action_provider fk_req_act_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 S   ALTER TABLE ONLY public.required_action_provider DROP CONSTRAINT fk_req_act_realm;
       public               keycloak    false    258    224    3654            �           2606    17869 %   resource_uris fk_resource_server_uris    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);
 O   ALTER TABLE ONLY public.resource_uris DROP CONSTRAINT fk_resource_server_uris;
       public               keycloak    false    297    271    3814            �           2606    17883 #   role_attribute fk_role_attribute_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);
 M   ALTER TABLE ONLY public.role_attribute DROP CONSTRAINT fk_role_attribute_id;
       public               keycloak    false    3650    223    298            q           2606    16881 2   realm_supported_locales fk_supported_locales_realm    FK CONSTRAINT     �   ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);
 \   ALTER TABLE ONLY public.realm_supported_locales DROP CONSTRAINT fk_supported_locales_realm;
       public               keycloak    false    224    3654    245            d           2606    16751 3   user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);
 ]   ALTER TABLE ONLY public.user_federation_config DROP CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5;
       public               keycloak    false    3691    234    233            �           2606    17233 (   user_group_membership fk_user_group_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);
 R   ALTER TABLE ONLY public.user_group_membership DROP CONSTRAINT fk_user_group_user;
       public               keycloak    false    265    232    3681            �           2606    17410 !   policy_config fkdc34197cf864c4e43    FK CONSTRAINT     �   ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);
 K   ALTER TABLE ONLY public.policy_config DROP CONSTRAINT fkdc34197cf864c4e43;
       public               keycloak    false    273    274    3824            p           2606    16861 +   identity_provider_config fkdc4897cf864c4e43    FK CONSTRAINT     �   ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);
 U   ALTER TABLE ONLY public.identity_provider_config DROP CONSTRAINT fkdc4897cf864c4e43;
       public               keycloak    false    3718    243    244            O      x������ � �      j      x������ � �      R      x��[�z[9���߅��_b��o Lk;���ҽ3O��#;��d�h����ŎtT�B��4�_]��]Ҥ��\])�r�:����q�ߎ������A�bm\�$�%�f,�ՙ�ȝZ��B�i�w�cs���|sA��Fq�w�.��e����i�8�&Ws�.�ʎ/���x���w(�_�����]|���R�[�/��(���nN�pM�5{�a���p������'~xrO:O:��O7S�oa�Zu�p�(�wҚ:_���F�������P��sq+�e���zC�B��E����iP]�ˡ��%;�%�<�r��Cߏ�۳>=�u_����ǧ���ӗ}�w��YF���:�_3X��eyN�?��=�uM�v!�\ǻ�C��Қ�e8Y#��y�����#~N�Mv��Jhٵ���C�X��:� �Ǉy8��E��:|��$�~������u�P�L�R�WGTW�J�~��ǯW��N0ge�:�ŬN!u���~�Z���]�R8�����G�'>L>���ۇ.�!u��f'���5��D��4�r������E0PXMp�>D�
�B��ѽ�Mѝ�.JlQE�T �T�rR�t�X��J���.�D#�1�2���'��}�����P%"������<c4'�H�ަ#�������.@��g�V���^���Xӷ!1�<���.
���kb�\Q).Ǝ*�����]Xy W�=n����'��!�>��
V/�%:j�2�B4Dv����� ��6�w-�Ic4�fD���
��1$O�q^n>�Q�F)gq̨��2ː1W��O����O����s���u"[D0-gra@!@���"���x�[~�֙XSN���J�#�R|���i�6d$=�����讜���#G��R���ڥ+\���@����������t߫��� �Y�Ͻ+����\أ���{�޳-�6�ǟ��������B��땃�{Cv4�[�,����N#s���aV�I�Tr5Be|�
uL=��V���s���o��4��*4���Jׯ��7e�����N4�z�S���jD�^kq�j�T��ib���dĦ�Ξ�5�S�!-�G�4�{K��"IZFjE�h���@��O�GH
ݤ��t�b��D�@�c(ΑK��ٹ��a�nZ;��eU�u��!ZB�ZK[���XF��,y�����=+����6Y	��%��!Ǥ��@[������Fx`���\���kP!J�`����"9�(��oݿ����U���MQp�CXn��}��� ��9飺�Zq�5�?�����BIgPJ�(����+D	��F�Ů��ɢE����I_��;�����B8%�/!��hc��-x�~VM�Ɉ	>&�:l%�L"F_R��}��M�y��`p���{�W�~��܇q�D�
�-�c��'��t�sDJ#eX��in�Xg���^�Eg�N���G��[��_�)�St��=������8oe$�<);�;PAs�e��f@?Jl��=�a���F����T�2$)����*�;1��}�#�u�)x2s8�h'�J�X�6�An����:̀��%��yy��G������}><���B�Aq�2ă`�D;b{,��1��a�r!�����l'�-f��!�^E��㼬xC���AG�kySh���i�=$����Ӓטm����O�uW؂]X.�D>���WM{�eI�I�P�J/WEn'�-r3N	-*倰4S�в��w*�'���@�sk�hȬK\��}�Ң�����n���c�
�A�IXPJ-7H��n�pw�v!x���U�x�� A$�'h�k���@�����R:�l�r���>��FB�s�H|��r��2|�#@h��x$K4|����A�Z���p;��ɔ2�ʲY��H#us*���p�<�+?���a8�ev%�wR>�׻"O�M�Ɗ�����~p�Pz7��}�֡ܦq-y�'�0!BaRj������گ��JƅPo	/�7��2A���Ф��Ffd�ԑ�7i�)4O�����Kω ��+���W{w��i]xK
5��$�°ܭ��'��L"����|'y�ZR�QJ��N�{NbX�.�n�'�6�Y������*��u!�� g��ud�*�����[��l�2�o ���Ѯ�^!<��d�2z��["�f�+�����Eټ@N2!8Pg	�f���t %SbT�)�T"�P��[�+n�޶h?��]�wz��u	{+�=V��4rG�����	�./���}Nj�Eyj[M�a�I�BDl�̧�V��<�O�8�q�x�������@��f[^��m?bz�m=l+$��Gο%�s���5�D��L7.���1 �Ћ���P
�@ǻ��J�M�b��؀|. _ሑc[�N��#zW����h�3W�� {�0�¸�s�i���2ڂ�@�����h�VP#-�HQ����]=J7��`c#�1�2$�4���.@���nZF�R@��c��5�o�6'����:���a��� ۢ7}��Х��)S���)F������o��79y�
���!I~[G����[�*�Ą�w����0��
����j(���7��[�;/�Vk�QZN]�譈����1}V�>u���M_l�(5�'�9�XdʯW(x�B���~�Z��Y�o�hr1R��īݤv�8�T�2�kAG��WA%!���&����pmhzK`g�>���n˨:�6��e�e���ч��ۦo��\�B8.����������oՌ&�5#/��k�Tx���f�����Fތ���Ċ'xx�1O���l��Ƀ=x."����][��Oe�ų@J�c&�=��q�~�wKlg���r���m����;�4�%�N���æ�v�.6}�\(��0��H�N��q�-�Qr{�� �6}���U�#��g��O%��%��K��M�.p����D����mB������،���a���ķk3��i�G�^6}�Du~A�JL>�bk�R*�f �ɱ�&��P]��v�9�<���QBp���#ۍ���*l�p�SW����B��#+.h�j�dc�ȑ�N�r��f��6�
'�]]�]����5͜O���t�bS�x��6��a�s�bZ��Y�}��a�nZ;��7��
��H�<�-B%��m�NW�.7}��9ܙT�e�� �Yf�j��R���F�Ӕw��ߡ���ee���[���YX�*Zm�H��@B���drՠx߇���Y�)�<$��.���_��x�>�<��M�-��m��vR�mvJ�RHp���<�M�u��nӷύd8�F�tT2+���Py�7>-�\8q���=䢍F�t���=F��},hC+��G��������k
k�����vb�F���S�#�W�nR� � �tۨ��G<-�YO� .�I�4f_�:�5�?��킾�[Y�$�$W��.D�4��(pY>�{EO��=`� ��v��1$�iJ�&�;1n�-]K<!��Q��t���D�^�߶u��Td,<t9m���h`���
ο��|ӷ�.��G���o�е�/���}���ת��l'�-fN8�nW���²��>������\�xB��d����
c-p;����l��Y�=X.�D\qHB	[ٞ�h� ؒxɶ��&r;�断��l~;=4�,v�.� �=e	9ms$�o�U�7VJxI���h�SM��_����s)="�A���E[)���va�zݤp���o�5bQ4���bBCzˮ�Jq�
��.����&��u;.W��u�8�T��(�]�.��4���ۀ�K���[f�U��8��	&�;-er9X�/�0:q���N���8dW[f�!t�t,4+����2Ȁ��.yЦ0�PQBu�X�hW�;Zo�ţo����.@�FI>�nf؝%HMQ�X{�C�!��"e|��d�}�/�׃�v~�3�
Ԟ]4�@�Y��v�gvJv�gni��%�>�9sY���'��;� +tN-�{��ʆ�!U�=l+��^�����woA�6���HǨ6�_j�'�"�N��� 	   ����?�:qP      Q     x��X�v�]���?@��~,%SJtbG
{�M(�}8�ff�b���R!)���P>�p�1@W��֭�4�[Y
#u�(#��Q�,k�F�b\���Վ�ݛ�g�iǵ�����y(4�����jy녭ڋ�&hJ&*�U�pr(�m��n��٨T%y�� �H�ú.1x�3�ֵi{��~����eA��մ�/�i��i��<�W�?�~�';���M��P��V�"r+Z4rŇ�QZ�9��~�ܜ6��~���=�<��gޞ#�C����c?��-��r�"npq���oqYՒC�MTMM��UD�UdfSr�RM�*���?��8w.x|�8?.�Ǽ�.�N^���_�{�d�X;�:� �WMd��j�UȺ��<�[�F"؜�&��3D������
Z��-��y{�r|�߿gM��MՔE�Z
[b$-^�Z+����ow��Ɨ�G_v���)��\��-j�j'A%��k2ő�w<��^"L�l?X���˥��^�N�y�>l?Wj�}����a<Y.��&[$�p&&9*/\�Y�)&I��q�;�.7���nW�i~����8s��?�?~{�|��
���[��L WN�YCJ�a�I�s]���{z}��}�o���w����m�g�,�v�]�Mꐺ6lws�?CJ7��0v��b��t�cO!���_ �a������N�� t�2]�����t(�K#��5b��3�2�J�u�7�.���n��1ܼm���9��
��6�����#�aETGX�Qr�,�o�V��Q�>�N�y�D������}F�bu��f�j)��B�t��b(���k��ޚ~}����S�óN7X���Ϟބ��f��4l���颸��=�!_do]KJI5gH��Ć��� 81%�l�w7��?�vh��.�H�~OL���6������j�,nV�#q �9���5� ��mM�}�Fw�,�]��>_�q�����Ԟ��Ԁ&�MsI�	��h�T��8�B��˒�6l��$n
�F�EQ"p�?Q0\��,l: t�s��~z�����?��S ���c�nm�u�r�2	Ք��r�m�X�J�(ʮN��f�\x�.�>:��p�TMO'4��}���}\��l�Q'��9,3!�I����H���������P
�H>�2�Uph��UAq{h����,���Mc�3E��غRk��f�3�>H:�X��4��,[���F� ���3������X�,��*Y$��ȒZ 4��}؞�8�v����W���\bL��x/�'+<+j��g����5��A�����ġ�(e� f%����:5�.!!��"#9��}���{�bY�{��`������Tt��z����bY�B�M����:���e��Ԕ�=���bY��Y"���2�M�H+2���WYy�(��(������� �c"j,�Ղ��r���˚pS�n)�`=haiݙ�H��\et��Y�e�)j9(%б3�Mi�B����,!e�V,�r�bA��2� Z5 \-�)`��Iچ`f�oG��I�F�l�p5�;j
*7�U���WϬX�`�'�)c�3����Xȋ���|�6�*Be_ �X�F7��HU[��5Y���˪�(&�m���2�z(lu�/)cZ����W�iE{w����f ģ�KC6q�h��bY�}J�
�x�8h���T!���=S����7��=�5r�qw�պ�?���y������ΑoY(]q5"AR����U�F�~�[E{�)LR��D)dU��6Ј9��ck|��Ջ/��"�      P   �   x���AND1C��O�/��I�܅M���Kh>3p}z�앟m��*� t �
�y�bB�=�r��_��y��k�~���咛X��U�@#W�6J˦E�Է�YxDE l
*�07'��q^������%q��a���+z5����ӽz*b���T�"B�&@m�6D�j�RK17��V^�Ʊ���`M
��@DN�l���i۶oLn3      S   �   x���Kn� ��.��|wɦi�c`��E�ٽM�����ƁRQ�UG�"A�� K%�l��[��w�,��,�O����.;�u̎��[��h��A����ݾ��`#��W�����yz+�b�nYjS^���@����W�xQq��
�'m���&�P��Ղ� �` S�=e��ӟ��B�_
~ic      k      x������ � �      /   g  x��VۊG}���<����T����<�`�`}�Ί�f֣^���Ԍ$Xv����B����s��:���1`���EZUYk$�\I�k]��q�h���f�	�����m�O��і�!Z�\FY� h�b�^�$Ӵrz�X�7s���͚�;�#�Cݹ���^!R�&�\	P�^���}�>'��ǜ���ub�j5cݭ��V���=�3!�ԯ��)��g_���>������K�k׿��5n�>���4 ŤPWH)+�NH-1 �z���}7l��:6�N~��<� �(��$��YH�����'��q��K�sAT��/���|�Jd��z�:.p7��'�e����W��n^R����O�ߦE'�)UM�RB4�s=� 1��e�A���l�G�3����X����4-�iJI��M� ���/�I�f~�~�ƻ��C��He�.�U���Ɩ�:�(�T��69@�^���FW�`��3L��>�C[��q0�u��B7��+���VR�Ɩ?lr�hȐU�D�L 0��x��8,!�X�.vnU���l��Q �gjU���MBQ��D*�D�Ϥ��4N�EKl��^�/1��2!�,�O������Xй*�4�jb��	�u�;��Q���x���`� ����*Z�(i���g&�2Ge��.��`��վ'��Z���7*,�N l�VI�y�!������uk��W�͐��zص�^x�D& ��\�>���]�� 5w#m!fW��|�\�^�D�8��D~4fTB����Q6��#/9�,����֋���Ϡ����v=��,��Ϸ�3�W�n��y}�7��݋�/�'����vRßMq�q_���^]]���      B   <  x����n�0E�3�RPЃz}G�
��&F;�=)گ�Av��dC�]��B&�= 7ԡ@���D.���nj�/�uS��a��u�ӷsԈ�c��S�5(�-���3�Qr��3����D�(�EԋlOs=}�>��i�eH.U@=$���Mēn�~�}��H�� S�w5����ܪ"fYW���2)���RO�r�sm�&�j��k�h� ����z��6��s��T(Q�F��X.�ߝ�vR8����X���0B:��K��F�clƃ���6B�;�w�Z'�t7�>�W�8�"�|�`M���ĝj�Sцf9��ǩ���+y�&Z�@���\�"Ɛ?�tݞ���6��o�2��m�'uY�_��l4�{�Ce�C������`�d�X�����Z�׵o�H���y�#Ssk�0����#	�����V�����:��;�yZo;]y��@�2Oۮ�X�E��TUt	P\ �X��.��1�d[�zׂ]��<J�g�.�'�:�?vAXX�K>��t@�
��k��H�>^�Uz�M��.�6���D��qֆ}��F��7jb�Q���C������      v      x������ � �      u      x������ � �      C      x������ � �      _   �  x���K�E��=�������vl@D,@b�ݪ��t�t�lA�zN{<h�DN�;��u���w�cwٶF1:E.�@\b o{KU�z��w�,o�V9��,qp�\3�Rl�l4�mҪ�2�z'�O?�?,�,�8��iw�iu���ǋ��m�Շ�o�5^��)T��eU(9iĚ[v�}��N����:A��z�˸�Og|���ΫdZ�ʵ��c'6ѪI1W�ӧ'�,��<O��qZ�+xrb|-�E��w����٧�u�S��Z2�L U�7�Xլ��K�v��ߏ�.�.�D�L�m#��ө3���;�-O�MT<D�Р���d7&��`֤Ln9U�ȫ�[�oU{��.t؈�0�Q�"tJ�R�b���F��-�F9E�����n+	Ҁ���K!tw,�K����2'NW�}ٯ��ٟ:�0���NƇnķ�d����+bA�T��̕�E�$Tr��P��A
-���4o!�w�僴Q�s�k�ƈ��Wd���jQ�iƐw�nMf�p;��r�
z���!��ɩ�Ɵ���"��Z������`R:%�|U���J=���~��~�����|���܁���s���^��e�����/g���
fa�Œ+��U�޹�7���n���k�8�>�,V��LV"2[�Ed�J��sV���{�'�,��t��:u�x��&x9��e�2\<���e�F�&h�0�צP))̸�&�>&�Z�֧y�h���xr�i4�>ܗ��y#�e~����&��NeOYBB'�����4!�Y.��=Z<+��q&Z��X$���騥�]�^��|��W �u11�yQ��'̿J�K���DN�;*p/a��T�^�V���_g���/���
���nά/�Z�B
�uQ����-���9'����v�P4�����ZE�ԙ�[�x���x���Dy�g0?�J�eQ�r����-T|����P�c/�lj�5x�+6�fl�g�o�����E�+���bd$��,vhT��ԙ�_��k����JC��y��ܩ�T�`.%���S���/d�
�9��ى�ąڰ�d,N,�![	���̿J�g3ߋ��e��<�i=LI�Pl�>H��{b�nm��nE,z��8h�
��
��)�����I��g��k��T��hQ��`+fuѺ�����a#�M@UM�e*��m-E�#vdt���0ٔ�~wss�[��;      `     x��XM�b7]?~[#'�󱬺����'qZ4<#�E��5�R��/av�t�=��}NpiP	�CJ�@�F��"p=7���v�~ѷ~������|h��M��í]U�;���\�8��Ckz���.���W�_���?o�=���]
���bC*X!�v'=��n3vK��M>�~�������F�c�=A�6��4@<E���+�@�m����¹r
�������bK����*\��?ޯ�q<�Zq뼎�v���p�'/������T�&�,�%a���ž���[��?��O��Zf�Q�s�\�&�����������L��yY��?������(,�쐪@d65�!�̐�V�p��dV��	��yQ�묶�?���ԛM�Bt�Dk��p	c����X����ձQWWF�����V+j0]g��)�[�.�%�o����C2UZ���o@������d���D��@>����E��b�@�,f]Xz��1�2�,^ ��f��W3�j ���p�1d�V�t\��:�VO���Q h��dɎ�i	mHA�2��:�Ғ�޶r�]�B��d���73�z��e���r>�-���6���$G���1��D��Zl0!�ⱈΪ[����Ec�`'�Ul�5����g���Y���ߖ0�'qq���T��ae�Yx6� m�ص�D���6b5BF���]�z�9�>����
Ƌ�k�׆���=[��"[������*�a�>m��K�k��V⪞�6A���7�X��������HyzX�x5q-��Z��5V��DV��;g�M�Bv�!N���K�k��FYv��m�#6[�ٮ���*mkyTC��p	�ĵ���+9��=�]yn�2�*G�Q֬\��lq��r[����L��t��F�u�l�B���z��ڴ�%�������ΖR�>@Mk���V��LY� ��ҠL��-��eqQ-j1%٧��W`F����Sj=y;?��hæ��UdnV�k��md+��G4�n9=�5[��"�Mf�,؛�f3���=�k��Fu�v�ݿ�R�0      w   q  x���ɍ%9�U�����|�V��K�q��H�|�L�r�{�Q����.�����g���(�O٭�����v+)�N�?��:aݵv	��y�����&�8yy��GYm���Vf��b��goN?C���)����%�v�1��,t�������gz��mW�1?[��,��|�Wn��ںz�g5�l��������u������ul�4�KR��8�o/����X!��bO*v+�,jݺR��1)$��Z��UK/m]��͕�W3r34���z���R�y��z����+��bn��b{>�9֚+�]��KY-���c���X-�����Iz~���2-�}�U��C�B,�bA�:���B,�bA�X�C���!V/��y��,��Qj��n�x��;�w;�X�!Ă!t��Cl]�!Ă!t���9�j�b�b=Oңu�3���Y��Ӓ��k�!v�bA�:�X�!Ă�u1�:�X�!�G��=s�Ջ9����b�e���b#+�a��7�v֦!t��C�B,�[s��C�b}d��3�X��C%��zVVrWc��b����{�
u��C�B,�bA�غ�C�B,��#s�՞9���c�7�2\������vO�3�k��rK�>�^���K�n��r�ޥv|}$�X�ӱMS3*����-�V�Qo����"����K�L
�֥��[uѾ2���ʦ�9z�I#}��zե=�rLuZ����	�u��+�b�U�+���{��Z{��ݐp�ԭ�q�a+�]͜�{t��)���u����S���^�.�Cn�+�Ϊ�7̈́��^M�v���.}T�]b��G��,�dx��5��[��%V)�y)+�T�s�t��7���a[<��!x�{�z𭺊JU��%�F��eϫ�qR���i���5��.֋I�r/w�3�֡!t��C�B,��#s��C�b�b�|1�غ�Ce�Y������E�����V�5Y��!¢s���",:���!�G8���!¢s��!�/8�к�CK�zբ����z�֏
r\�cG��C�B,�bA�:���B,�bA�X��C,_�!�.8��<�6������v���<5�IA��s���",:���!¢s��!¢s���B��s��!�.�o��݊�n9�gfm�i:b�}�IB,�bA�:�X�!�G�bA�:���b�b�u1�ZZ:[I����֓��d�S��q���:�X�!Ă!t��9�X�!Ă�z1�X��Cl]̡4�
!���D����n�J��*�6j��!Ă!t��C�b{d!t��C�^�!�/�[t��s��}�^X=�lsY��ٷO��!¢u���C�EB{�u���C�^�!�/�Zs�������c       a   s   x�ͻ! �x��+�߽\��x�4˚��3��~�1����۞^�]�X� �6���0�;�1x�|I8��M�Y-8c�É[�(�ۭ���w���w����&M      s   [  x��W�n7}��B?0/��c��(Ц0��-/��0"kU���ߑ���"���y�9�9��Z�#G϶:i@�1��hj�Y��ߌi˟��0.\�:�y����95�����.�����W�7}X���]��+ެe{����x��a=lW�a��ի��7_�\�L�M�a{w=܌�m+.0�`� �]�L�1��ūa;j����f��6-	��`�O�Ka�%w"=���)d��T�$��7�,~��l������f*���b�JK�('��@nz~���C�xM���������0-�5}����O1����LL5Cq9B��[t-������r?6�״��~��n'�H�%`�i	��_��[TBF=IJb�`C����1�
:��3�S�S��|B��m� /����K��v2��lK%�ƹ�`����9\i��u������Ec���#�!G�9��K��i��Θ7��6�k�[�RPC�}����~$x/[�C�e99C�������]7�O[��o99�&(6iw�V]�t��Z�|�O,[�/���=Mͽ$��Ep�%e�v5���$�+�/����p5�e8�|��cj\<5V�}N���J`{���n���d����!OS+��Lv$�*�f-����l��s�y��k�:2�V�F�x���z�@YG>���������+&�VBE���{�v�!��l����J@�1�4R>��HLM��^��MV�,�MZ�%/j�E1aUs�G�%�^!��&�;�zSk�"ګ����TrVm�mv�Ú�?$�'�M�0�zSk6jh0j!��F�@��U�kd��.��<����M�UE<aT��LPꅪ�ы�l�'�Ʌ�l���dʦ��g)������,|t-�+;�^,��:��N�X�2e��<�)��15r97�lH���uU����K7��QS6)�����8s�AID,V��'����է�x]�S6)˳����:������P�bH�@�b����!էe|v�>�`-7���`��D�j�LVKj��M%K��/2}���sNX��^�N;Y��⛁�bm�b��[��u�g�Ī8RA��`4G1�d��i����=���w�������      r      x��|W��H��s��M�M�D�@�%QE��.�0�H�^��PV���N�f?,�H�Ľ4'�����P�U�  b�$ ǂ!�XP5�u�C�+_b��5*(X� S" �`Hc��8��˺jZ���	�%uS�&)�ǫ������|��T-�����tPU b��(�!&ʐj���o�'�h��J�_��C��� AՈ& B!� dBJ1�� D4�AU0TQ �4�	��L�+���y����Uٔ��y/�'�������2�R�5�%�����Jⶡz�+�DD�~5( B� 1a��h@�*���r������g1T]�2$� H�b�@��0� �?�b�#Ĩ�#�2�B�|3ȷޑ�EJ(�棼a���C�F5�A]a?���~i(�܁4&Ē�JTD!�" ]eLT)�av@�T����7��)H�X�ʇ*(s��{��H~X��ɪ&<QR�IM����,�!�Nt��u<&d�n,�*���A�ǚ��#cR��& 7 U�@4�4Y�Tk?L��s�@��� y�TUD�$�L�¸"Rݠ���/X4�&3M���S�<�b\DCc�c���Bjs��t�w��+
�Id��#��1�ۚȊ̾`J�K�ݘ��ǆ eCXL�
�&U�o��tJr��6\UD��!M�%Q���3�S���07a̵���A�uA�Q��JcB���3��H9�p���\!\��dI� �(�����9�4M�0⶧|���
1Ʋ`HX"2�p�;��<�x�G�]]&3�\%�	<�Rh� ��c�O`�7%��i��M!O<��VeIS>�~�-��*�H��E�W��B��'B���PU�CT�k��!B%� �<yג��|u�J f���~���RM�a. � 5q��"�(`��@��T#�G�\t-�Řx�q��p\�� ���*S?��r��]*rdU�jL�/4?WV�Y�J�1� n�f�R?oj�a("�TԿ ^o������CD�h��g[d�D�4`�/�����;�Kr��,Xr��?��k�~�?��O,����>�~��w?��~��������?��#�ס<!�JN��������?�=���+�����˪�����ɏ��I�4܎��*�Z}^�<���XQ6BB
�^>�[���v�ȟ�V}$u��>���\����s7?����DI���:��͗p�[J~�=CyM������>P��ʠ�]�����7��f���ZZ�Tu��u3���o����֜:�����#��9�?��`<��[U��_���₣��oA9BU������_޷i����+��K�����{���VQ��k�k���?��?~�c �X��`��8$���FL�����x�D0�=����"O�?Ub M�5#&_�aC=���/�Ny[�Lӳ��1����	��ʹh���ي���~L6}�m~l�������h�D�c�����dzK�I�8\[9����i�,rV���]��*?kB�}����@[��q�45nK�^�7��i�=1��FDs"Z�l����|�:o���qN<g�M���iso/�rm���Pyi�x�0��+�\�?Y-v��u��{zFXV���M�I��s3	�n�./�x�gf�l���h�ϖw4#qGþ�f�^��k'6��P�de+bѽ�Nf�("�u
���~i��93K�繚ʱ��� �U�?�����w3��˱�����������ds�:�.�����G({����M���޿?���O��6���x�{��3�{���
�/9E�d�ҩ�E�h����5��-C�C������]KHn��.�y�<��U���]���dZy�왭���/�s�X�[X�-��2����#���
G`�͞��3K��"^$���*M��T�Fi/ N'�"P�{��դ�O��.��h�=5/�s*ÜI�lr�Z��s�D�¸8�p���1��5�mgO%kFG>M'�Ng�(^�-;7��h�X�"��fj�[Z�\�S��0�+�-����n^]�S��>r���s�Z��ً�λDOg)j�W�v}�'y���!^+v�L�H��}v�����Z�ηh+��&�&����/�Ml;ʾ"�-L5�����^b��sS��f���>I��+bm�h�� 8�In�m�����y4�*/e}2��$�g�Z��'�z��{����S�=γ�0�ޭn�ٜ%�d�1<u�7{�l���:-`N�syM�}y[�҇��4%^y:�S���k�����,R%ٷ��62dw���g^%%�q������iw��Yכ���N��_p(�Ԋo�<$V�i��4�11_/�]߂n"�6}������~���8��-2��w_���
@g��A��'5f�mO�ؤK�ٚ�}�� S�b��W��;���v����砍�q\Ȅ:��o/�v�P��Z#�e�f�e�v�{z���+Y����6G�M��n<h��f��Y`�M����|ˆ��yz<a/D����k":ln�������z�������Y�O�/h�(�n�"�ޥpl2RIaj��jn:�=VEh��IU���VЮ�d�T�c~m�����ł�g2�3�aI�T�^j�ó�ǫ���;/N�mN�a�x�9̛��j��?��X,���<EΒM�Ub3Hd���De�4�//���I����5��e"
��%A"��P^�_�}���e�t�����$+�Ơ�y�邌�3�0��ks>�����I��c�,��[��{|K��m47�[��g�{qf��ܴ͝�^�(mۼ6��F�����7~z��������N�\����؟������I|St����/c����4�rf����-턶��%�Ʒө�/�rr��#+�8����엊�,���ELo�{��7��<�gҵݍs�=�+�<��E��")WBt�Ng�[mXq�N��]��$=I�x�U7z��I�R7ؾ����Y���TO��=�����ϡ�O<y�d=4a$�;���.ʧ��j�?$|����=Q�`��9g���H���@���Y��9Ə�-���nG�>��o��8V���g�i�$�r.�P�m���H}0��؋�y@1۲}�K?s��s�Yqw�ݙ7��N��6+��.���2j=M��~f._���~
����������n�QmHr?J��֒����$��حR�6����J�䰰�Se_�����C��A�KA���{�X�����X��z�B��_���y<�k�\�]͖xm?mx.�����I�=`��>�"O���x��p�Ij(�x�a�2��Z��|R�ـ�&�Mdi.�w�X�"���~�Z,3�9��8&�g]�}0��9�v�����&�k:%�Cv�9��Fٙ�˫���6�fA�� ?l��!m1�&���1�㫬@�.����A4�s|��:ؐ�52����� @W�P)t �X�E U��X!�e��㳞�]CRݐ�J�/G'�yJ:g�����yXJcBT#��3�8V��X1�
V?+Le����Q�Va�^��A�OY��~5����x�I�z�ɲ6&�����-FbVO�c��;{�O���.<^W�h�п�n�v�K���5]%�7\�����\���?��I�.,�,�?oNy��b��M����*i�<�Ԯ�&�ޓ�1���v��P�Ț�ܽ�����ٴ0
�3�O��|X������n[�*��+����E��Ϗ��,���J��~y�ZM(��U�/�*�$M��Ő4g�?��`�i�����{�J�E@�E�]�C��~�eW��Xa�(�����O����C�u��(��q�V��ʹW��]{I޺d�)���`u�P�w�N7�T�'�&�y�����Op2y��X?����S�O�D ����?��hsZ�$7���~~���h��ni.�ݹh�D?�'�w�����"�SC�G3� ���];7w��~�*j2Ƣ�s���Hn�r������L$k�©�����ө�xS���z~�F�۾�~;3-�*˓����z�&��p�DN����5����R����    �y�8ɛ!�����US4��>�3�\A<�#�j�)�@�bJ���H����~�O����{�Є�,x��T�����N������4Yo��"���h�d�޶��x�9�[��;)1�w�f������Y�>��c��ޗ���t�_��:��v�n)Bj}.���0���s�h�?��gg�C<[8s�ю�פ~��]ޙ�yv�U=�n�=K�1���n�]t���a����>)�o�̄תP&Z�z����)�	��h=����6�;�U^�M�LI�/p�jb��ưgƥ����3�ZA��֣uo�h6�}|���C�)�{��y�O}�h�i:�2�H���5�v��8Nk{.������o�m���x-'��J1��a)�J?��a|�;�l����&jWl�!�����}�\���{�@S�suy��)q֩[�Ӽ[_�5�>��������m�`�:�SY=."����%��\u��4m�۷�B�t[���{$�4�Q4��*�0�|d�*-oe�˔D����� �r�ے��m���*J�����4�~+U|O,�U{W��󛼺���i
/�|9<�re�p����BS_<��cj��g�l��&o��1�N��<��<�5����^�//�����=��C�]^�y��}��LŎ3�j��U�b��6d�|UF'G�3C��^S9jg����P=RGf<O�k��g�6ܗ����
����rQ��0���ҟ����P<�D���:��K?I��������<'���c��2��Kݣ���u�.ˍ��m0�e��S]?��4N�D�,�ٛu6��H���H�W��׃5����������diY��S��{���I�޺:|n�:�\���M^�&{���{���X_��&"j���_y�0/��N�S��_&��%����X��b����O��k[��Ƌ�ڟ�������m��zF�b匲z�,��
w���g�H���(ŷ�t�u�x�o����Q䉷:���*�>̏~�=��%נZf�%�Wr'_�(ڛߡ۶4�5��%k��T�`��|��)���h������<Ͳ�2%���y�s�vW�;>���1����c���|c����~�MB+
 'U<k���齛����.
��x�w�0�F��ay�|:��k�d�}.`��������)����;���P`pW/����sݛKڰ�m�=�����K���̝,���|q��'���Bv��A:_&u�Z��}(�����=��dzn��x�C��u��'�3�s�`��̇����+J�A]���R��B,���A&���:S�;��8�fh� !�l�e1^�Ǣ�����5��b��X_	Bb�&���Ɯ���d�`�Iŀ~_�(�}d�?��������SU��1U�{�����J0Su��:/��/�Ή��>����Cb#F�yI��]�)��%�'� ��.(L�@�&T��؇D�!��:��@F �P�%�8ч� ?SL�!�$M1��.k�+�|�ϻ�3-ך���}9��E�5���,�eZ�c�U��@�,	"�DQ�����1N���	�~v�ğ�7� |4:70'9P�0��#E&�;0'D�.�*:�iL��7�X�UI�J$M�c@�k���"2�ymd�:W����'��2)�n����	��J�^��c�:���]�q_W������s�����L�yB7u噧ۆ�^q������hu��jx�
^�,]�f��N�:ƻ���Q��b{y��jT��P��;���p�����4[ޥ,p���&=n������k�q_1��Z���B�S�X�X�%�����yi�DF>�i�,(	�F�`|v�1N/�Uu$*X�A��[�������:�� �����9�!)�<���Yq�A�#$hLL�$H�����X��Y�m-s�DX�2�9�R�_8��Ƙ;k�3�(�YMG:44�}_�'0bF��̜�2ր@(��Jt�}�~� ��ҷ�FZ,\������)�E�5UdL0R>K�75DA'PbHS1a������'K3��3�ZK)�(䵓V�uvr���Y���ݺ�=��jkdˑ�N4s�.��:��_���\��٧S�ri����S����xl���yUdy��+�$xh;/:�4�U�Ev���Eyx���P���)���ÖI���J:�d�*y��N@,�P����)�/�$�Q"P�:������%gJ�!@ҿ�[!�6D�X�l-?�����1Ʊ
�WF��i:�?K��8-�L�Ʊ���`�����O�֯L�ܮ�E�q�7�:˷�UC�� ϫ:��g����G�yx�F$�����wJ�Hu�}V\E��O�p��b�a�}�L�8T,˼f������A�-��k�i.g6��F�E�7��l�vOb�tދ���|��?🷟į�sM�m��Y?��y��6���}男Xٽ�i#�lCe�_�\�2Ζ�?���M3�l�0?�����7�g�`��Dvy�.����qwFUC:q��iJ��^���Pl�8��n�m��~p�6��d&К���3Q���5�E�����>�J.��[k�.���L�=�o��'h9��y��'�	����ѱ���ط�n��0ץ�O�b[�j]������g�Y�{6M�F���4l������ǷX��)�v�m��nڙ-%��%�z�v�ts��o��&�;���^3�km5����l�D� �4R��?���2���ݍP�X�y��a�����/]:�n�'����uV��|�Z������}�8�Kg�/_ްy���t��{5�~��	�}�d���Fjˍ��w���x�v貀9_��4�:��򯣳�u�@�}!o��Ր$?M��l����I>xZ�o�9�,���=�4�!���%����yC��ǭ�ԇ�r�8w���T�=�,�T}:��\�{cO�ɳ�R���v�=�ZѼ�7�؈���X��zy�r~g��X���oe����1C��m_�*yG��^u��t]�.���HŞ+����0z�h��dk?�{/=�޿B �	dA�%�f�	<��T�>��EQ�~_���\����]�|�+����}�U��T{.T�(7�h�_V���%y���Y�g+Y?kۦ y�Y�:~�����'Nw����#o�K��Ƨ@:�E�c�N��Wh�ރ�D�hq`I��taP�Q\���6H�!o�|�-�в5����Pz�r1��M�ys�#�_A]���ɭiV�خ�6y\��t�_gb�3�"�_��g����u���洟�;Y1n<uyE�Tڟ֢Xd�u�2i:S3�VM�4��{�.+w��j���t�^}lA�����v7G�9��ⷹ������*�v)#�������27�͚�U�
�*�������
��8�����͋�M���Pu+ô�u2�������_.���[cen\�����E��Ď��:�/��l��&e��vcD�(��� >VX��oe�X�k�N��gy۳��x{o�I����IT5N���N�ւx�$�y��(�� �]��d8�[��>�v���vx�lp�V~sר ��k;o�/g�3���l���=���w�����ևJ�c�����e0WN���i�?�f�E��a���6Y8�-`O�:@}2��py�%������U3�TOd�{R��h/#޺���K���$:N�h�N�!kT�}����'�ӆtr�O���O_�0�4�e[7�k�(�E~�`�"��@�=;����f�+H�N���f�<��]���H�t�3wh�� y��tYJ]���i���em�T3��¦��2�W�}��w ֧���cI&��/3?U�!��˴�(D���e-�K�(��E;G�_�J�1�Ε�ci�[up2��]�inN�P����~�������T37���"۷�V�76�ۢ�@��/�m��Q��ʅ߷�������.�s��u�:�y�y��^q`>B�liW���~{���n̟�09�`t����$������cZ�f�;`��}�<����I!ո�{�K=��ĘK�6||6���k���V�HR�8a�D�uJx�����DCu��s�@�?��t,�*�%�(^ҋ�H0g�2���V�� �L�τ�Ɖ��1�����xr=x]\� y	  t�pf����;4-�a��y��Zd��۳~H��q��׷k*���,��β����� ��S�t��F�kQ�99;O4K�TF}qS�:���|x��C`mPp��@�:��=S����Җ��pZ���8�]ҁ�l�x�6�u��`��n���z��6����/���،�������T��Z+=�%�b��I��а�讵�j���dU+���5v�ʆ'��t�s؅��2���4.�|w�j~���܊ξy�_�5��G��Ђ�纑�F�#�ÿ])�<����aׯ�4�g�Ƽ���3�j�3��5��^Lwz�p�^/aWۃU�:���9ls؍��vs������|�PW��e�VR�]�1׫P�<�����9�]�kE;�u[̓i�d�#4�G��K30�#�Rj�Gy���[�k��L�vI��{�ef�y.�M(�,�>���1^s�+Ћ�2X!�v�<^���(ޖ��KKf�ym�0�ܮ�M��ղ���<�����%/f��z��N{�J���Kuc�<_g�r�.����=�f8�6�p~^�+�U3���Z��}���������ħN��r*�g2'!J�X�v�4�Q_�;Ա��"����uK��o��'�&�Η�����SRy���;J�6{۹�V�آ�q���� ��pLC�/Se��+Y�Y��S��Mޡ�ߦY��w�g2v��Χ�Ň�\�P�{��,��>M;�z�3�����*-�s�`x�i�g _h�8���.���[y�߫�R�.@��)/�.쪲��)�E�[��t<�,������,������&u�p�j�۾��x�u��Ө7~O�CiM�@IN��Jv�VЙ�[��io`�����8^����J�Z}��jeS���h�:�6.r���Z��fmf�;��H�e�ꅧ=��QaM���M�]o�I�Y�u4��I �[���M���1O�~3Ӂ��>���\���Ȓ�e�Ns���h��rN�E��Wx��}IMq��H��|5PwSL�ݪ�9�G.��.8��b�'ˇ*B�To�	1�s�z�iÌ�n�q����T�������D����$��S6O���2g��X�G1Q�O�3��{����O�!hM������p8D�,7yUؤWOJv^�m:'\M�kz����W�_;����n�4���1���KFsXk�X��p��C/Y"���i�ӹRN�m{��3��o�X�R���Q�d��r��#�Um�U�
&0,}V-x� �@c�n(��@��}_&��U���	���F�!�RE�!O���$B��k��M���w�l�~����ߘ�y�~dy��xxd~u���\�V�vס?��L/��f����v�i�:x� Y�+�dG�����f�ၥrQ���n��(���9u�H���C\���L�w��׸��M�����i���cٞ�*��	�g?�+�Y<��e��5��P̈HG���:'��<��^�;�Ў3��r�ݎY7t���	�w��3R���8q_���"��
m��q��^�SC�d���`�^���|�K\��פՏ���U'Dܞ'>i#�SyvS��y�����_U{�Dն*ͯ�%���@S~>�S]DI�0�fP�+ڿʒ&i���1��o�m��$ʀ�I"��fe�3���N��^\5^�CC�4U�_ �@*�:�X&�c�yq�PQ�%����>W>���S�K�K��X���II�h@%��ꏕ��P9�c��� ����l(�2�����#D����:`���X�%�Y|⦈��	]
RU 1�����ô�$�
�PAc��!�C�nL�c�EL�1�?9��ε���9�O��LP)S�����y�/��ʛ�L�ָ�(�e�7ʐs��+���D���2���5���E�G�@�JÀ����g�E�Y��%!�E��qS>�� �r���I���;�*r��QI4J���:�q���d
h�$���"��;�e ����H�>��4�s�_�vڞ�A�|4�)*��~�I3�
T��Y?����E���Ju�6���X��Wyh�
TC�%�Ο�/�O3I� ��X���$Hv@ ȍ�ǌb�;��e�2☦p�&D�I,������H�B��>���� ]@Td�J�����D�E��:�s��>!���^��B�b1�Gʏ���
4 c��7p(��lߑUS�I�~�!�zb�B�}�_2��[< p���Iwu�~�5~5��Tԩ"S������q�R�oZL�b /!��"�(���B�X�g�	@��
ލl�<�5^�퇉��Me�Jc¸3�"����(S����
X߿@MI�V�g�ׇE����±�;F�e/�� ]E<ǫ�,�1�=�������EEA(�e����-^��Lg@`&�Y�೹L��Ըo|_߿������_�~�?dh:�      0   9  x��XQ�$+���r�����?�K�Fl��l[4`�d�X<晻h�^dd��܊���:��%��n��<QD:�C��J�����K�i�w��l8�u��ҹ�تGt�E�dq�,u8rj6�l�e��N��ǜ�nE���)a픕H�i���[�j}��V���RF%*����m���>-��ъ�"sS	w)m91o]���m<��ظ���mk���N�$G�"e�&�*I�!Rz	��dx���8���r��[]=Ev�e:��ig��m��H�U�Aw�����d��(�P�c�;�ì�.��Hzp� /�L��-��\v��'�j��Ԯud_��FX�饱덄��^%��������f4Ɂ	�i�Q"�t�Dl�׻��~�K�6ps��'%nV|�'X��9\,Չ��0<�g���N?�;��i��bٝ�ZC��'��2� �UTJ�fv�Z��2�oսP�[NO���1��(gc8>�Y1��`;�7�� C�#@��je��Z]ݤ��I�ĩd%�D���M�P��ˡ_Ô��=�ݐ��|sLˮ+�z��0�s��NEL8yi���tv��h��3�_�:��nbWU0/ �q&�,�{���w�N��l�Jo}:��h �J�����(�z�w�=Er_��9-��͆��zvM�G��� 5|	��>-�m��Ս���L'�����/��Ύ5]�D����F{ʅ4� ka�+�[��VG���AP�L��H�C�67������p�����W3O1[�J�&y�	��K�-H.n�c�6C[f{�x��?�kUZ�@�ji�)2��X�و@r�~ۮ�@�h�x�C��#�C�9@�FO�:�߽��c��(fȬؗr'%�aE�ς^y�8Hv�̈́h��y�<�I�������J"���	U��@��'w�GMa6��5.�6 =$�o�CN;�Ӥ�2&�_ ��e�y��h.,�ǜ�{�+��9�*s�����*�>N0����� OC�bZ�lЍ ;����	�]T6��\Pi��M=��i�^�����y��S���V� �[����x[�I���[�l�6�`o�OY�f��*���R�Ej=A���o3��I'�_���&�x�	�+�w3?m,��1hcW=F�����(pB�-ڱ���3��.�[$�ڜ/��	~���	0��Η6���!{+��
���6��^�a����R���L���I���KZ�3�Rz���s�L���vϫ0�(�gSPf�EʎQ��$W ��� H6L#fg��xw˵��������#�}� qPᎠ����àR-'����]U���kTy�4$��}��U=m��Z������ ܍Q������z���QX�"���Иu� �yP�U�D�MQ�m�hv?@�Ӎ^�6��l2��)��>9!F���;���s���>;�[N��A�xt�C�	���v����f���x��K�����j]}�Ap��sFAс�綠��4��� xs����A�rO��C����=�,�1a2C�{ž)�a'+'��G|/������	��!�A�D����GRg0��d���d�H�I��Ǩ�W��I�(g�m=�u�ZaL�j;�._��w��.�l�6 �)s�^E�G.`�o�p���|p�] UL�0x���/��U�8)4<�>�v8d'�E��ЇP�D�B��,�%1r����Oa?�}{7���
�:���	9���}���� ������׎4֐�������W�N�{I�ei�v���?�9J���s���M���E1H׷H�KY'F�Z%�l)�XP���������̣��      1   %  x�Փ�N�0���S��-_c�E��ҖB�iA,|K57���>#���`c��:�o�|�Lc�Q�b( U�5h�g�p�t�~�)U]o��v���í��*p$h�ʪH��D0.C���lT����8�6�qm���p0-�ر8r�kq:�5��x����XN.����Vi�]8^NҮ^.�l6���ɜ̏�em�$E��+U��5����׷7i�����m�*��骨�&�|��VE���x�O]�j���w@p�d.+���(��<����V��Q���I��>3M]��ٻ<��!�%:��E��."�F�������i�2DJj�b���%�P8I}�������R"y����?�����{�J���n7�n���鐯�?��]a�u�H���|�BVn��܌��"C2���F��oAp+$$��e��d��&w��O`h��X�H9o�&҆p���\�ŷ�B,C!hH������e~\o'w�5�y��,{����ޜ��x4]����r�W��lv1�lW'���~����^}f�      .      x��}kS[G���=�"?����1S�j0[c@�$��֩��ik����ן�{PK�%D���I;<�[�ޏ^� ��d~k���?��?8����X~	˿.��j��8�����ǝ����K�^|��E�us]D� ��?`�g����TX\�b����r6<.��E�!X 8`��Xư�<P��!̌�?<����M�?������h|~u<<9�<�]MƧ��_~��pt:���{5N��b�Q��5�]���ٰ}�dx+�O�F����������b�%�~Ѽ%��	�0�� ��������覈��[̵0HzL�{��M3�ݚ��><���yZ#�4������H�����k�u8Z�#�G�}����U3�r:�����l6��w0���ǳF� ��~���lR�,l�?Z\?��Vc��������.L�0DE����\J����8�<6�ic�W��P,�-@���6�Z}UB<�1�f6:��aq��~S��7��ĸ��;�'�Lzw?����t��:��sQ�uЭP.h-��\��$a�	�%ކCW<�����d<�O�΀����î���'�M��9���~:I"���u����i�tD��@�Q8n��A����59���o��(M�	D�d���$71X����ZgSAP�#U����i�>4<}������m�6:����śЧI�Zi$0ѢP�B�-3�qp��ћ-�2
o�"D�"������ww�0�ڥ��m�\z]��G�I0rނٍ�:p���FKh�x�M>��î�� ��]to��,1)0Z+��D�r����7�Q[#���7r
��}ִ�w�=<>u3!ۍ2��2q<��hbXy��(�P��*���2����W����rڍ��ȸ7e��w+u��D8�yHQ6J.��AE0���Zd��i��Mnxe$�4Z�J)q^�N��!���B`�~L����Le�����������~��k$�D�>O�
�x�<(&1RQB���:r�5*6"������l+x/���ZQ�nH{�h|rr::^��Oc7��z��ߘ��O��nq{��4�ۇU.�<% F0!͇J�.>���|���2�!���,_�q6
."7�"�=��b�(v����ۖ�&�4\Gxo��l"YR�Yp�O	��!&�wQ�@�3�X�mᗋ�ޤ��\Q�]'�����i��5<�%����V�'���iC9���ZϰW�k���BZ�����ps��c�r7$[��2�YA��m�k����Q��@���(L-U^��t���0_^4i�򗥞+���1Q�|N�6+�^�=��N�G��^���d}9k;���M�?�7`���Gev��BŅ��Y\��#�r�bq��4xɃ'�������lxvqz،�a=���C�G�5�'mq�x8��>z��4�Ӿ���k��ԗ�h3 =��V��7 �B�4j�3s&a�V�@�,Bj�QHV�<�<^?�h��:|��Ɠ����:|�G2�Q��/�eƺ8�z���gggE4�*�S�K�n�P���+C�L�V,H��^�R�!u#��F�q��'�GQSR�|��9i4��x;�r�����ܮ��؆{�X���L|�͐����Q7�<@.����5��#Q.��R#��Ն C7?�ߏ̓�}���b2�1	)��!l�w��tt���d6:IG�íy��]�(��O`.A��(�t�� �Q��0:Hi1��"��텈>FF5"Ap�S�D"3�~(�aa��x&%���+���'���������g���w�nce��lD��uouk�:W�q���ڰT�۸�ѸK���������6��J�#�tA����*,�F��$H�Xc�C������rr�x8��2��R'��黎�.o��|�1ϖ��tux�f31�M�������<�k�����/���5
k�Z��p����1kR�F�[�
5"
,F�:�u1��^vAR��F5W���"LSZ�,0�^�������X�NimjB�A5����� t::��Dѓ�q%m�����Ģ-ٺ�q��Y[��\lלI�t��eHe8�͢#�'BL�`�#��#���>=DFe}|��ί�K|������~|�%����r����O�0�rjjM�Xs_}x��v�e��S�rr
tQLc^P��T̹��!�g^�	�!�L�Ab �����z��|λ����xv�h�������vSf��S�r6��)"+(Y�L0��h��Lj�w�2"���@����{�鴊��V��A����E�����_.�cN��4'�a�)�8�Y�J��a��I�r���۹[�0X,���כ�[���~��ٺwN%�8p���`+�(7`\�B����x8=��.Ri�:���.�課��t��o�leNv^����]�[�2R=|ˁ��oH-A#�yj�K�x<"*�2�T@�P���j�����;�	�pc�׃�ǻ��򡸿6�.n�˿zc÷�[X��4�B邊���
d3̡� ���)��!�z�\�Yk?���`�e�x��}�%�Iтf��΀6�QR���P���FI�7E��e:zj������0��N�wr��Q"�d�,�0Ħl9�f�Y��)Y�-�J�Hkɶ�붂@ˠ�7�9�M N�VYH�)1B2���s��h���� pc��v�N��_�9��x��S�D�кe�TE�a��̼�H,�&Z��d�a�����,7�O���Q���Y���������b�/�a��H0pj�A�{�=�Z�Ұ�F��(3�u�5�\W%����n�۠�-����$�"���m܇��9��_I�≂�<�P(ᒪP�B���A�<b��O�������!\U���6�)�u�#m�QjcѨ��j{v*~x�| }J���ҫz�y�J��]v��X�	��&�H�54�k&��p'��l$��4���d-��y�e�v4��e�_<.]���/���}[m~pg���rm~Y��_�$�;;��p#�a��%sS��"��Р��8��PԂ:#��P���3���~��3�7D+y�
��..Xo4C0�М��6U�h�C�RoJ�_NedQ�5���v������3-�I���:ac!B�҂�u9�6ʁ=�:�5D {I��I���9Z����W_�-�]V��=�|k�]Qrp�H[,7��TF$&��*�w;��R��WQ"����!����娩-lh�)o�x��^�|���ی�H�u��n7�_����P�k�H��k��B)옰����R
�~ep[-n�L�~�f��g�|����/q�{I'�e�R�m�׵���[�['͛������{Ϝ��}r�u%�[[�v�XvF(��ʵQ*ݾIw"�e��td�^�tD.#�B�a1������\������ηNZVYE�kl���p5��g���X��v8�-�7S�P)q��H�a-Άh��^�JmNR��H��9�O�6�t��]�Q�j�1�y���IEB�̃���"�+����|�r��r,Iq�����{���(&��J�`F��H{-���a*0&6ݘl"��܃���3V�9cE�Ŕt3��y�`S��ǜAx�Y�Sα� ㉍�š���z?:?��T���̨�̭%{���txx~y1�<)?�ߟ�m	��0t1�$��`����h$0C�"7 -K�=�����rޛ@��$R�r�Hj�*�|��02aI*�1"F�J�z������������>L/?�?������l��Y/���6_�1�_��w��:q.�*pۡ���^p��(p�����Jm��1hD�Ŏx��F���%�z4WE��D�ɧ��)G�ê/��Cժ��������Uൾ0�������S��x"�ӯ��B8x�VR=Ol���
�w�_Pe��_
�����Ls�*�jޮ.��������p�K���٬5^�X�״,Q�6'����`���O�����E�S��.�J\���UNm��    @�_!� & �%(y���N��.f�����ٵ�.�
D�Sar��;��@��kY����	�/�+n���>����frQ���Y$È�ܚHA��CNׁ��%`���tg��Iu���\5��_����uy}X�+U�W����bʴfl�,k/
2���Yģ�P�@7�#�ޖ�`���5Hh(��qa4#\�U'�K�i����|�������=�s�&�4D�o���(R�"��i�B������#�[��f��ݧ�,���n�	�ƣ���`�
��L�Xc�0D��,`����i�*�ڸ�Up�.�C1{9�,�؉,�
\#���Y�,2���s��j��4	�.`A�,;��vh$A���e�yc���XA���K-�CM�3�kX�����lަ�n/�G+g�j�r���u���Y��n�?'�P��܇���|�#N���X�T��t�Q;�t��;G �g�I��-9�2�y�*/%�j���v��;c!ס��x��q~�5�������	j��H�(p�l��hF^DE�SƤ���9�@$���t��^ɲ�Pd��K1��L����:8ʂ`�����H�ϩ�/�vyz8]k�2<}��Bױ����X�g��ܝyb�n�R�t)�w��+��R���Rp�&��� O.�.��a��ǌ��yb6�����:����0�]����kr��Hˍ�Ao�֦��Y�r=<=��+pr�w��dk�BiJh!�[���I���$av1��hy�L��J�`���p��spf+L�wʴjIcR]��_5̨�;Z�<F^�j2��r�6� m\i�m�wW����46 ������aU�޳��"�y��a���IGȌ�B+j�l��&%��\u���[�ڇoI��2�_���ȉ(�9�N��k��T�y���������۠]
6]f! ��ԁn��8n
$p�0(e[�'�/�g�=�ut�M=}ͦ��y1���ǯ����a-E�e�+J=�<�/Ϸ��݄!�Z�gv�`%\����2�K�qHQ��]ǆ~����/�S�z����
�ѕ����|����ݵ��;F�Ĉn��0���1p�YP�A����H�0`_n�=2+0#^���A\,W�x0�Mx��B���F��z�W��R�ʀE4�(�p��`�,��5�]2��|N�u�b�~�]�X�0O�������%p��o�RLb�@�M�:̍`C$k<S�%5��	�bK�C��v�G�U���jo�Tu@�k�?��|�{V<�H��N�d�ć���&�@�P��$���c�A�x��	��O�]�嚸�@���-�譋uS`�t��r�����U+��N�ʠ�"���J�T���w�*�����@����-tD�`A!8�NXt0>��3Ѷe������$Q:�4{ê�&���Z	O�e)�O#I���� p�qp"�^��-���b �>�e��,k��T)��U~� �(���Fpv(+�s��ы�I"}	�[�Nu� F)������E����7 ZI%�,*�^S/R�{b(r�Q,�0��i�"��/� ���s��Y��yw�'�ju�VH�Be��Ď�T��W^Z�TY��]*�}�^V7���8a�}�$�>�t6��\�>���.,�X:��>���>������)�'���L>����-}� �#
L����hk�g2"�#b�JoFa����p�U�����S3�W}��,|{����ű��>N�����������߆�?�2r�=�.FI�A��o�g���6�������Eh:TPّH��X�u���Q�c�@�K�6�<$읎�OG�w����h�up+.|�=,ס[����	j
�B�G)Fn9c< ��,J=��G2�m7/{����x�#�������4h�}�&�4�\���:�����^|h�>�F��2�8���WB�Bg��k�p��@ct`��p�5�j�R/'Lӫ��6�_C�L����f�55�W�xmH^3����nނW�hzjL�ְO�\���=�.ul����%˿w�~���7�%��@����J�5�=��$�D���o�1O�X��{�4�����U�wW�{�����u�6_b<:}��O�t,ч����I�N�BguD��/��VH�-�4(�^`���٢Z�5��Ro�7�6�U�P'�롳&��z�q�RYL�
0͜a�X��~]Φ��������j��UoT���?�����MG{ƹ0I���;Y�"C��B���X��٥+F�)k��VP�#��6��'�`�r��F�����ҭ+d[�Z
VV��Z��W���-�����E�u��F}��
r�)�D:���V	������?m0��m�1�mV���vϤ��.W���[��^��\�����EETwϞN+�8;�!�ڠF�A�Ñ�e��7*J,�1��o�W �)�s��5�Z�A��z�bv@��7��:˷3k�k\��qʺ;����"��c�o��7��C߾�L��<VB�(~�JG�N9�3�P�
��{�_"����Ѡ1�E�_���*�ZJD�g��?����^��:�=�|"d��|�ˁy �i��ڱ���H6��*���O�Y�H��N��x"��j��R�бuð�uZc�D��{ss=0ˇ��M�ü�K�����kb�,�O�`v>�ш��8�a;4��|����:�f5o:�tz�5wꥑ�g�6�kIE:��:r+���7]��Ia5�:�: �մ�ؘ����x�>�����N�mx˝!qUȩ���B[�&9P���g����� ���5"�W8����#r�u��tJ::�s�Щ��r;�U�F6�^���)�!o/R�i�X2s�� _�z����)��/�ܫþ��f=`�ڕw����"V*5E?}J�Vs��\���]G�"xi�n��t�Pg�?�b��O=8�⺬1�zX֎ ��>��5����!]-Ӊųz:�ɣ��D���p�(�#���Q�W�����6�G�7ټ,	x$�&"j����H����f��kv 6������O'� _z0:+<I��;c#g}0�\˰f����U�ƚ��G����%��Ϧ�R0�|HR<��"K�z*B�i���n�74-���L��|�T�nN)IG�$��=n�U��Q�	Ɖ3�S���44���\��V��S�ng>>���B��6>z��*a+�-򷢩�AQd9~RX�.�H,	F��~�G��zQ*��?l��k������h�%�`AO�i^��mY�7�{��؅{Źgg(�EyBJC$	��POLzj7�Kߥ�@�'w���U�l�ޚ�rI��"՝��IeW$�.ս�>J��(�!�Hґ9����R�Lt8�1/�s^�,�A����a��Wp{�녽f�6�<��R̃#�kt 3��d�7?��n�iK`�^1�KIC�iT,R��$*�9hk"�6*����y_n���x2�Pg����5M[��2m,��p�7ډ��О��,8^Hm����("C���3�h���*�e���%1�M}el?�l9"���\G��7���`���l�l�Y�ٗ�yD��*qڜjZ&����z�S_���)� ��eu��'�-����GФF+i���d+-�A�T�%�]Du�_ŷ�8�[�^!n��*v�
��(��a`������ijT�I�UIr�-v!
K9�Q0%�;����2H�i{�f���������`��T�¨�@/:�NUvcҴW-�>L����~�\������hI��?_��:� U��("xU��#�і���e����j}����(獖O�hn��@|	�Zk�v�Đ7�}�tL��/n�E/=@A�%m�DZaŸ2@�H]r^W�jz��_�cg\�n?��Wx	~� �4���Je,�x���yH{�֥R��'�Q��e�ˣ���>� m������ Sa?D���>�(���wh͂WV� �cl/4�E�h���3=��/"bT��?�*B� �T��|`�B�~��V5-�po��S	�/�_$ �  ��%
�N��{�A��T �;�Sqήh ��������D�"�}]��V�(��#�U�F�}>��P���r��q��@��)︽	.4�J%y�O�)����n��.5!�(]��6F�Ti���X,��7C2�N��������G�-(��[�	�SzE6��O>�m�C�J!v��ua��߸��������GWG�I��_
&��,?�"u+FI!�6�	a#5�Y
vw�1�o����B��7^����pr^�^Wb�>o$�-Ф	E�	5�xn�1�:FT��9xK�*uhj%����)�QRW�o�q<{��5ŀ����-jz����7����K߀vĊ'�?0�s��	���j@��}�(��	�ab��{�2Rc������X�z���O
��H��tt8�������ݽ�HMaw�d�7�?�z�B$����q��fԢ1��]���]��켹9���i%���Vt�MC,�YHm����7����Bz����z���V?����pc!��:ߛI�N�X���0q�+j��
���C�ɫ��R�W%$U����Q�4��b���[}[kWl:'��� ����T���|*]��z�lo>�x5�o������K6�J�	̢@�(��~7��j��:�d�o��"ؑ�)��mq$i��q������0�Q:�@e) �UR'�ڵ �|W��M��C�J����j���{x	��R��\�yP�#O��}�*����zq�a��m��6�?:�X�z��n�UN��4���k��7%�j���e�����>�pq������TH���b��,a�����)S(��2����������=�窷�kL��V*V����*_]+Xa"��v��ֿ1�8�(�����`�C��-��ԙ$�rԅ`x�{P�y겳X����Y������ă=ƗooMg�����	���t� +~�`J��>_�0x\�;H�Uj�Y�0��Xd�P��G4�Y�S�@M�s;�j=���np��>WM#�@�\GPX �<���}k/	��Dm���G	F�o��*鵱�6s}ֻ�պ(�
�(C��ATz��O�aD<�K���/!��9a��%���PP���
���
�?�j��:��7٦#?����E�\D�V�$A,O9K#tur8:���*��������M�      -      x�3�L��".C8'F��� RKY      x   �  x��U˵\1[��lƽd6� ��h�����������&Fr���#4f�5�q��i���М�$�F��H�=�[r�����9���l��,Nr�C��x����������3iǾ�k^���OO�C�+�RO�CH}�c�E�؈���9��g���3b��8$3��ҍ�����x��t���{�h�^����|C�W���� S�^60�䷲O�m�xƊ~��
�0�qǕI�ڕ����O)�̈́T[���)�s1vc�^��O���S�}��dx�wR��+x�+����Qt��+/y����Hq���3�E���$�,7�޸m/���yĞ�;5�60��V��a��K��bƹ�Cۡ�&R\�Hi���)�Kx�2-+J��AD[�W�+�ܫ�ضg��e��Z��F���r��t�L�E{^1���/Վ�m��X��%7�y����^�,:fn~nq�X�|XWt�q�e�P=�̰�S�3ǖ]ѣB�
�߅l;ojg�0���;"|i�J5-��V��uG��N6^���;�h��/G�G�������w��/7�����ĺ��Fi3{i��',6����Al��B�D�
Oڐg��T���sy�;rM���*Q��{�Q5 ?u�ЊQ�j������������!v�8_��&Z:���_���/���      2      x������ � �      l      x������ � �      m      x������ � �      z      x������ � �      n      x������ � �      o      x������ � �      p      x������ � �      q      x������ � �      F      x������ � �      t      x������ � �      \      x������ � �      [      x������ � �      G      x������ � �      H      x������ � �      L      x������ � �      M      x������ � �      �   Y   x��1�  ��R(-P�.��ե$�����{Ŕg�HK ��P4L���D9E�}(j�iP.5���c7Aȅ��Q��h^{9k�<<�      Z      x������ � �      3   Z  x��[�n%�}�|G^+�RE�~"Oy40�RtkF-����C-ci<Kw���-�)��s�yS�>�Rh�1�{��%纕P%Mwr�i�H5q"!QɃ)�P5�o��o�������f����5����Ր>��;��6�O��ϻ�Ci������Q�I���Y���a.?�~��g��8�H6s���0�s>��,ͰJ��zg��W~�x9����s*�B�X#q�T�)����,��e-��~D!�a��1�ŐG�w_ �W����3���6h����k#W��T����Rs�f��N�^��������n 8B����LL'u�r������[��}����\�.�m$
����G���J��[:��3��?�΅޺�"5�o�mx�����a Y�C������i `��Zsu�6!v=���)G�_`����>�\���g����d�b�;�o�R�ɪ��4�#���]�\���]^|���{���i~9�C��Q��g���[�iƇ����9������1m2��A�n�|-E��$�����rtr��RN�j�N&
�G�Of�\sT.���9���\��ZO3!)l����.�TW,�T���C��'��\�3S*<��Nձ�!GMao�>��Z.��G��}�x���eLC�jM�S����"}�ݓ3;�)J�b�R'/�u�P��;M�������/'�8�P���c1OR�`��N̜�ӯ�'g$I����e�g���&�J��R�G���3����ԢiMB�AE9�E���ZLiFߜ�8�����������U��U:��`��5�H���4����z���:���@W9ӈ�ԥ	d���D ���+{�O�m�7����:�Od�dg��8�:�����TR�	�9��~}�����#
�0�~�6�[k�U`�^��Y~|������F<�{�)=!Z�!Ļ[���%�f�z�q�����e��Ϥ��[��z�1B��p�����A�;���G��@���_�΅^z j�G=q��i�+E�o3��П��3���sჯE��Fm���BS#-��%���s�|188<�K�6qv��au|��4��hwvew/2�������/�\�����IS���.&�G.k�H2x�U���=E�2����:���Q����vܖ;�U���ّ�g���U��~`K�����j{������'��jx2U��P��ݰAi�P�"I��'��q_��zN���[������xOS��YQQKB5b����_ɇ��Œ��C��� �zk�ѽKs�[�)�nN�0��b��B�cT�(	܉�ڌ<Y�Z�����U~�����/�����ݶ��rSR(.��:��B�9�65�Ss��Z�d��c��� q8|`	P�>�3;��Þ��n�j�"O�a�sD�{�	�-᭰}�c �hi5L�>\.�Ec.����>���Mx2��`7�"�6NvZGx��xj3Pvs�5T��lRJ=:v("��@?�޼�ǹ I�X�E��H-U�Y��MGx�A1?We�<���ʈ�Qͫ��K?�D'u���1�����tűD*�*?Ӆ��I�i�[;�[���O�"HY�0a�i˹�y�ԎA?��~
�����As1�Aͳ��{�����V�-�"k��o�}����UgJ�N� �7t�7{|(�9?)����r\���]��BN5�t��ݟRAI�e5�"�q�P�y�3��~X<f�i�������	r*�A�XR
����d����#�8>����hU�A��JXd�Lع�$��������4���E,�F*�䒺~����:P'7$MHAd�
�|���mJH������
�CJ�niIW�7�lTz��*�"���T�#���;vElO�C@����+p�����l�R�~��s��<�h�<�b����}��w�֩�c��ׄr������J�:�4��w����:v�X'X��.%�Հ�5�R���!�V[�,��T)m+�|U�8[�R����ɶ��S�k��+n960L Ɗ#є�%�E�9���ֹ�ǐ�T�
�"E�〗�P� ߣ�N�7�Š�=*.�B���8��@��c�u�az�	nςC�l�#)$�%U�~�i�w�֩�-k��ɯ�b��1i0�~�S�cп����@]%r�kG�����(��P�S)��o��s�P�2�w4kH��H�N5Ql��𿮶N_��4�zR�ڲq�u�C�cZ(ݚ�?�6��֩F���A�v0}ոe�1pjS<��1����SM�(���z���s���83fC���Ӕo��sSi4�@<�Tڡ�JvLơs*m�X��u*x�+��h\ϊ��&Yg%h�2����:w�U�mI����1\,{K�w�ֹ��Tx�Z������ǌ�-�<=_��&"�iJ�Q�XOa*��<j��T6���}��V�_��&LU�i3�d���f!�Ǚ�����7�X�8�Q���<�H�Z\�x�|��o����7��2؊��4�,Ψ�%c'�/zĉ~t��T#��!q�Ȗe=k�˒�t���47N���ͩ����=xŊ�
%��V;�*u�I��\�[�oN���c��ǻ>V��T3RR��e.�����ߜ���J�ț�.�!� b8�	�K�	��oN�/=���zd�4��N�Q���98�A��$|�A����\�.P���Ɛ�����%$ݝ5������y��ɬ���M���U쐌Н�Ek�&�U���0�3]�D�{)�U��k'�6��t�Uq��zUY��@qB��d�8C��W\�����8�"E]I^��y1ాQ��Ġ�c�:���������@��"�P�!,R^߳]����-��/~��u����f#�z�b[-F�^��qe,�v��g�ȡ�^h�S,�QL��13��JZ�ߞ����wv�Ŧ�a��g-�j��f��a�V�I�v��k+L�s�����Z��گ�@�&lɶ��+��ܳ�Z ��5h�z����+=��[L~�n��~�U.m]��N��	�]kTAxɵ�gtXO��K�d����i�U�i�ŕ�R{�X�7�gi:e�Jm��ֵ����޽�?X��M      K   %   x�3(����42�3�3�447�05�06������� a��      Y      x������ � �      X      x������ � �      �      x������ � �      �      x������ � �      f      x������ � �      D   |  x��Z�nc�|>�
�@s��� y�_�|�A�L�.�(i��S#�X�\r��yĩӗ�>ʅ���F�r(Ԋ�Tc��]\Oi����л�>��u;=�q?i��GO�i?�z}�����A�[u)���2��z��:}jI�m~�ygZ�Lʣ:\W�ڨ�fIR
&C��i����??���4�@��t���� d�jq�I��L�'�d�Y��W-瓑�i��j�MrŸs�!�m��A��ǧ�Q�/_h�F�_O���Vc���S�gj�'�$^&�$�<v\f�q:��"�-��825o�w�͉m��G9�������з/ӽ�w=?~�?���Svf�!���HB*4G��=����&A�7F�CFܝy�t��c}�����(�_�z�ֻo�n�{�1Q憏�ڨ�^ȍ� ��f��xQ%+�R*��K�pf+�O��fr�?��ǧ�I�/�18Kp3��ᢈ�wri��)'c�}�����JJ2(kIhFe�	��T���Y�������đP�%�i\��Q�R�pU��$m����{�����Ѵ�"::��6�Y)�	چy[�'��Jr�7
�ƕ!�	���i�q����|����ҥj��f�q�8�b�z)�4{'=m���|~7n��D��*3U`�%P�%�p�x��'���wÀ.������M1/d*H�x���Q���^a����Y)��Р���i���l[ߟ�>My�@��RS��}C ���!#��ٝ��������ޭ*�Su&��B��!�E���3�r�+���j�+~���K�u�l��϶燕�y'O���PmM����400\iĪi�l����W ���*���z��	���I��W�qW\4��#[ώ�̰\+�B���>�yo{�� O?+����0���K�2� �/�u�9���"_�{+b|�~v#�*r �Ʌ��H��v�fm�_�O-�#�� ]�k����z���������1u���� V3��i�)Vى�^���L�
!�]�Q%�y@f�ȥ�Q��k�@�[�PvB ���I���*���%c�����x��U�":R�Z`���;EL�$heT)�x���0$�@@�Z�'撋l� �t��K�����Is����x�Sg�H������&�s)��k���|��$��'0�����&���'p�����?�A�^G_�y�e*z�T�����zD/s*�\1�2�N������6AdM�֮4'O�\k|z���@Di�c� �3 _��@Rb���մ:��"��K��I�V�Dk��̲}<���*ҋ0pj#��)��NNd�a;�34�&�|w8��A?��IW�9Yax���3$�ؐ�ڌ=�ck�C��g43�"`ࢁrQJ�E���&�>��i�'���	C����wY�5��K���m&���]�ъ�v�н��P(D��5[\��bɲ=>��"���z^�ËO!���!�h?rq&h��l������?���:�[�BQ�ˆ6�V���m)��|���(	�۪~�����
R�`���Ȑ�_p�����r�f$ �L���+����SP�L��ߐ��﻿��8�.xă��J��\�xc䀿�-�
���%�נ�����$E���a7 � {���w�_u4s�׸O-��&�z�>1�qa��A�i��/�B���sġ��ԇwNB�,�Ul񻠺Q�*�Z���/��D���Җ�a�5�>��dn��I]���4�!��҄,��~[�G�(�FH5��ֻB���ܟ�6 ��Vpʲ�L|r�A{,Wl�tX�N�Tw�º�	�;K�郛��UR�8����jJ��T�p_K�߸-��P�+\/a�������OȭE�͛�E���c4ԩy��F��^��	7n�.���:��`nb`��sE[�e��Z�m�E J�0��Z����ENb_�$��io�]"��o���ġТ#PT�ةް-���0� b�$��3j���T�V+8�n�]��4�jqD�#�!*�
��\+�
H��m�eq@�[�P�>� lm���@�٫X��o�.�� b��{y]���O��sq��7m�.kO�,�b6-�It9���z�>�[�E�Q����2R�yQIl��������m�E��g_�����נe���O�0�m[tY:\7[KԚ3(l8bF*R���y���E�0�B�4�>.��lTL�����v���*ѓ1�]ɚ�կ��!2�曷E!��C	r�H���J��+�e@��u[i�+«��[��Ah 8(�b����S� �^ףF]�*�(Aj*!��n��:��@�k�(76�n6�b�;�}i��q�٫��b��
$�@��s|�m�E��B��-ϼAe����Z{�Hg�n��dsZ�Bֲ�Z-x̍���ny.P���H�1kk	�!�Ә�Z�۷E�A��PZ�B��
��'�d��.�n�]�I��1/g�<Ƶ���SFy��,�j�ö��`n=7/3�淂�zQ�:Ô��9.��s�OLI1e��,v^�-r���s�
��ʀ�Ĩ�(
���Yi�j������0���Që��ۢ�0��O�l��1X�DXv-�:웷Ey=X���9�I	
��i+��rў2�E�	KP�!:���ז~q�h��o�aHkeP(�@JR$=~*��K�+ny�E*
�0f2P*%�Yr�p[t�y�-�.�4��c=�e����fo<!�o��ů��Zgk����;�w0���R����]=���6�b���ۢ����J-(���!. kC����o�m�Ex�a5"�Z��ך߯�	����w��/r�4��u��TV�f_�4��3����/E� �YL�����ڧ�	�Yjd���1Q��E]B���Z}��n��on�      E   �  x��\�n$�r]�����~,ǀ����{e@ dO����Ri����ݑ��T��`����!������oQ�sa@nQ��sf������p8]/�חޮ����z�[?=�c9<�b���~9��y~<�r�N�X��ˡ�]�ē�Sri������x*�B��FM;}}������?^���~���7J�#� �@V
A��j���1F9���W���������o2���\�2�������_�-���������PJ�0�JC��ր�s�J����7,׻15� ܩ�S��o���+�*W,��� a0u𽩞�Wb�+	��{}=0N���N͜S3�o}��x��J��#�.X)�
Κ������I���$������֏FM�ǝ��D�Q��?��n�ay�͎��8R���*�=D�E[F���-���Y"����vb̚Џ;E3f�I�qJ䝊n4�u��-��ӂ����h�X-��唜�ujB�2���}8����ASQ�
jzt�U��CT��7\9����n�N�ǝ��v�O�7T�[������Ǳ,��tqʂOIW�	��T���$�����z�)��iB�K�Rv���3-������{o�(~�%9��r9�ýM�q�fƦ)�7>�p�O����d�}	�|O(}Uq���哜��I> ;GM� w�f��}G���]-�b:h�м�-�@�(�jӝw#m�r�.|.|�;� ܩ�qK�z�����Ay��$W�.Qr�5�y��s�֦�e���5K_�\�;�w�f��_.}�˥�ӟ�o<Q�yF���@/v+C��T��:�N�͓9Ǌg���r䁿\�M7�iR k�\�S��7K =��rv��Z����)
$��XU	�l�r�*	���S_�wN���NќSS�o}� ���6ݭ��i����j|�n0���rJ��:%��'엏>M�ǝ��f߸$��.eG,�V��
8[	Zh��1���p�n|�9X�D��\�� �8t�h�D#p�r�,���
�1M����] o�Ȯ�ÝBH����T����Z������| /�k�]�.�;s��\�m�.A��������T,L���a������z7����������?>�����ck.�p��_������1�|��Մ~^��_���?FJ��:�!8��K�J�����:�hn�������w���Ͽ��1�����hrR�J�ZY�Y�m�K���vI�/�QH�׷�z�>O4w��n�Ī�N�e�^{I��\RF��g��>�GRT	���i$�h��e���5L�1lm��h
���'W��8v���,ٺ5���{��t5E��s�~+8��sp��U�n��B��k�BJ� �ll	�+�yu*�x~;^����`"�8���O���K/��������SB�V[W�0�"�+^���T������	��㶳E(���O�Ba	��_�o����?�O;���t����|��y��U;M/�i?^��/̨���ns��s0�a:�Bk1m�=������XM'[���P���q�̽���r~{y74D����*�B�)�7ECq1��c4v3s����v:;�w��N��ӻ3		�7)��\�|��/�!ar0���5h�2i�w���`��.@���ܒٔ��W�dg�ߜ��� ��L:XѬ�۠�V��T]�4~��_����?��?}]�D��8�i��6Z0��;�{�^ޮ�=]�oDH�0��K7�I�X4QʢS��<�>���1�-"�ʐ�s�N ��4���4%	reb05�`(�@���b�
��b�
.j�㡿 R������dkv�s�N ��;���"�J@՜7F�e.�h��v��Y绱��|�_ίW��E[!��w�[�ɶ��"K�+~Mqn��r+�j��Y���pMzs	�s�F�OƝ�������/KK�m�%����b�7U��e��V {��z�q��)�I��	D�O�	Dx��@�d�p��^M�l�JՖi_���2����
�9��	|=ig��S6W�"}�"��#���,5��)�K& �Yx�rn;t��{@1k���7!wj�6�3�ow��J�:���k9����'%,��զ����x�|���Z�3� ܩ����4��$�w�F�ئ��֨��{�P����*r�+|��cB?��X%�T��+f�hL�(�����C���kE�6_,9o�ΧlO�ǝ�9�&ߺ$��Tg��'��oE=K�w�`k�Q��Y��!���?$��	��S4w�-��(�X)�质a]�Ǻ����6x�F�j�qf�I��CH������z�	��EP�(�TS�Yj���s�Kf�S�xӫ�\���Up'�;�(��j�z9�D�>ҮG/$��6g9�p	|��oB?���׸�?p�P��T4f�]����/7]-�k��oQ1���Q;�w�朚�|��r����MA�����"�NKFn�j�s��i;r�D_��7 w��N�$��:	t�1����`�@�=i��9E�b�qlN�r��Q_�,���;5s�3�o/%��(��VWH�S6��4k@w��**ǴyN#��}��W����q�dΦ	��.I`�K�;���é�f�<�&k��=Uc�o�Qr�%|���q�f�FtF��}��L�:��U��=Ō^���Bhڗ�5��}u/�X�wp61}B��HY
�"	���0B�Z�[J�F���Y��Z��R��jM��7���|2��i��D#p�r�J�������GqdG�1h�lv95�&u��P[&')'�l��8���$�r��ZK���`�Cp�џ���ݍI����Պ�v@o��9��x-�]0N��ps�J���L4w��_��)'�׾�QCA�Aۚ2�0�X�6%����!�X�N� .('�h��ovH��7;��?+'��,K	��K򀧥$k�񤬠��\CGܬ�s��无�l~�Ӹl~	x.�\D����z�H{5�A�T�v���l[-i�{r.f�-��#x\�{ߠ��Pu��Ԕ�v����}�q_�������CD��!`��*�%y˃�K&3*^cVU߶���E(ڦ���� �6:,�|�hkcbZf���&�u[�bܞP�;e����rl�Dv�b��X;AknP�#|����9Ǵ]i"��Od%���	��S4w +����@�Y9;J*�QPS��B3�h�&��Uv*��v9�rI6�R|n�h���R
``�#'�]��i6��`k�s�N�ަ���"$wW��ꑼiq�����R���U��߬Дs�Q�F��襼4'��/�6�V�X����4k�f`/��QK��mF����!��1}9�)�Z��-S�כ"���v)�]n����6�vJ��W.]���/��A(کjH)*��֜�ڟ�gD[�6r�	��N�~{}"A�$#�����,_�^�i�P�J��7����
R�OƝ���%�rx%�.��C�M]��G��JD����-XB�|6���<N�ǝ��\�	���s��>~���� ku@$      4     x�����1����v~�!$
D�ر#m�������j2������ϫ7�U+�>��k�C̳�N�SF-\o�����RNy�|�����s_�}}��p�������o?~x���\[����>mr�!D�	�v�ҙ�H�S׊�n���Ղ飌��Q��w��\�]��h�BA�/4�E�RAE)��UϪ�6�*�X��}��V�uTb+Լ>4T��]!�s�)��Ko漠���RT��t6짳��zl"�0h�v��^Y�\��P_t�$!<�*|�V`�4@��O��Fܸ�q��Q���6��Ka�#i^ջ�S�h�wmd842&o��t�`5�?���?�K<��k�K�{�~XS�:PL�fn�4��˹2��43�J���AZ�$X݄�7�r:�A������(���Ih��m��'=�N8���E�$�,eME�P����nS-|����,b�� �����Ě�8+/�H�õK˙�q��ɵu�c�int�9����9[$ݦP�t5Z2�B�Gr�uww����      5   l  x����r�8���OA�Mn�3l*��$Cf�M&Y �{�U)Yn�Y�Ȃ��o���C��d�8�?�Z��o�K�����M�e`>q�,(;>3�.o�|9�R{���C+NX'�B�u��e����Y�q�uä���w�A]����e	ץZU4�ҕy�4��1`��QY�c�v��j[�ؘ�R��0�p�����w=��ߢ�<	5���+���ఱ��)�զ���N�n׏�{:8���������}�h6
��q*5�n+k�#�TU��q�4t�>�q�l�� Bq9�`8K��	Uy��Y�І�C��d^	�`
k���u���FP඘Y>��<I{h�0&����rԿ��Ջ_0!g�b���Vq�nx�P����^�PΔN��cL_q�Z�N�?~.}>>�R
'F3���_@Z68EGa��u	/ǫB� �� fK%\����"�\�ʞ=�*����}�l�<��N��GQ��Q�I|���nB;M�w�LT�d���h��aɥfӧ��l!i�G��7�dUu�q�}��ڷ��O�����G����ۣ�����A�f��X1��p*�{ä�-:��O�
����c]�ťȡ^����q�{Y4H��D�$I����v�Q��;�O4�~7�2��Ҩ7!��,�D�Y"�d�D֫6K�8�,���,)���,	�V��n��:��YR�N�%E�b�$ƫ6K��Yj�K6K�>�%E�YR�>�u�~�!A���~�!A������Ժ�Ζ����>�ݸ[�.n�Y�����C}\n��4�k�Ǯm�L���Cz���eOY셫a�D�>C�A�:"ށ^-���r�̭O�Fੵh;�>8�氬}�f�ŀ���kU	\����%v��X\��I�}~< �HP��8�:���`�+�*����9�!u�#�V�Y̹������
���A�K���{m2���e��~Y��<7����p�w��k�����.�캸�ݮ�;}��H��S>aJ�\y�7bfyE�2J����(��U�:ʷ�U����1u�C�CV�7Amr��&��W2� �5�գ��}A9�I$a��Y�/i��S3��v�(OY��M�O����_��      ^      x������ � �      J      x������ � �      6   Z   x�]�1� �Y����һ�@�Dct����oYkwB�gAUg��fTS�/g��3�q�`��,FH�
V*0u���Z�i쿲�!����            x������ � �      7   ]   x�m�1�0@�Y�i�rt�Q������[����#���z+�\"]X��6F��F-��;���*YJ(U�RE�\u3�5�,3 <�8"W      8      x������ � �      I      x������ � �      9   B  x���An�0E��Q0&%J���5��(
`�����,������즩&`��� �Q4JK��ֻ��v�7=N��j�l���d������8�50
R$��u|O't+H�L%����G����e��mߎ��0UC;`��R�V\�{�>�V��ח�8�v^�������/Fo&��.S4(�fN0�������HĝK� ��f��P-�)��Q��Σ�_�憒jg�A�`1w"MOo����������章Є���87��c��!%�K�Y���	gC����#h�Y�cey�Ӽu���,�E���      W      x������ � �      V   �  x����nZIǯO�x�����R!�IDH�J+����E�PQ�o�&Mhr�W3�����v�I��bN�W���6^s�&)�}MƗ�f��g�������k�/:b�D��,i9Ȃ	:'U�m�~5�p������Z��e���c`m�����^�MG������j�������z��������貥R�GVs�|\�`��Eu�7ח�w���lz3���W�6�����n���3+jz⤃D��c�d�����B.�'�gwwo&?bϛ��՚�����Ap�C`�8��
%T�{�L�m馣�������L"�O�7�wݔ�_7ü���ͷ��r�OJ��I�����O�X�-!�X�<��L�rB�/x˳\��a��.�ó����gf<�qhK��D9�d��ǈ�"c�ꚉ��y^�?��~�cc
%-�"L���� ����b�j�4ﺇ�4�=lx=[�j�2�gƽl�����9�"/�8��?`B��2�Q	<�T#�u�w.�a�e	k�<�ly�}��'���J����Q���5�+i�ӔHR��7�U��I��/�o6ǚ~����.�W7ɤ�\����@��Ψ$�Ѻ�F
�=p���=Lߌ�gf����T��eW����α�F$o��'g�I��]�*�A
D���\�
��I�#���'�O�.UR�-��l&��
�{�>y"Iɂүj��!bD�H�P�a_lbJ/���� ��s�P�PB�1Zid�5�]�-�WA���y)ҟcU��w���w�(�Zp6鷀����@���:��B [�I�>TY�6�
�{k8�0H!K���"œ��5a������^ ��$�ANl=�H労3�rN�ȥ�fQ���Þ ��w O�eo���������Gb������JN���J�PpW$2qx��t�bd���?A���@�A&��(SZ�J{�$���<�Ŀ�[q����k0�ƣK$      |      x������ � �      h      x������ � �      g      x������ � �      b      x������ � �      {      x������ � �      e      x������ � �      c      x������ � �      d      x������ � �      }      x������ � �      �      x������ � �      ~      x������ � �      :   �   x����� D��KO��`.{��CXC�{��o$�*�t�ȸ��׈˒Z�#|�O���F7%���$�go��D^C�y�IC&b�9�Ǯ�<���B��	��S���<��|�=�0�>*C�wX��=�&�7I�rO��'R�y����c�����Z�#�J�      i      x������ � �      ;   i   x�%�K�  �5�e0S�Kx�&��H��l�ޅ/o�l������؎��yy��y�RA;P+8��Ԕ���h9hO�%P1R����̓�}��>��z�1� ���      N      x������ � �      y      x������ � �      <     x���KN1 �u�.��qb{���q�*f@�����	�����y�S��	� r���0�)��NN��$ki�"x�	�,�qa��Z�E��G��X�{m� =7`r�BY�p��,�o����p%.5!�Go\�%��N�q�#�C�!h49v
]O�X߈��u��z����n���ٷ K����R� ����a�4����(T����{6�:*��	⍀Т���i���O������e�_�l-��Ih�˲|+m~M      =      x������ � �      T      x������ � �      U      x������ � �      >      x������ � �      ]      x������ � �      ?      x������ � �      @   �   x���ˍAC�ӹ0�>��^���CX&�>"��ϩ1�Č�}g�'&ě2�N�g\5��puo�2W�3��V2�S�<�k�2At.�AZ���w�D�<;�@��̂d��?���'�ն\`�.��n�������kE�����o�pe'�;�� ^ .�����"�����Hޚڣ���н}6	�G-�3�ޑ��ѐ�������~���}��KL��$�z4:ގ��B�E��>��T�$      A   �   x�e�An1 �맴"�-�`l+�H�������y�ŵ�sg� d
NH�[�Z�y�E��mRкHg��̀r�D�K�:F��)ReB�$���յ�B��y~����z�χ�S�a�����A�MPM�l֛��UjKLvuj M�b@s����zQ~n��?�8=+     