PGDMP         ,                |         	   purecrops    14.2 "   14.12 (Ubuntu 14.12-1.pgdg20.04+1) �   F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    47585892 	   purecrops    DATABASE     ^   CREATE DATABASE purecrops WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE purecrops;
                postgres    false            J           0    0    DATABASE purecrops    ACL     .   GRANT ALL ON DATABASE purecrops TO purecrops;
                   postgres    false    3401            �           1247    47585894    enum_Activity_logs_event    TYPE     T  CREATE TYPE public."enum_Activity_logs_event" AS ENUM (
    'ADMIN_LOG_IN',
    'RESELLER_LOG_IN',
    'USER_LOG_IN',
    'STAFF_LOG_IN',
    'ORDER_PLACED',
    'ORDER_ACCEPTED',
    'ORDER_DECLINED',
    'ORDER_SHIPPED',
    'ORDER_DELIVERED',
    'SUBSCRIPTION_ADDED',
    'NEW_CAMPAIGN_ADDED',
    'NEW_PRODUCT_ADDED',
    'NEW_COLLECTION_ADDED',
    'NEW_TUTORIAL_ADDED',
    'NEW_LEAD_ADDED',
    'NEW_GROUP_ADDED',
    'LEAD_COMPLETED',
    'LEAD_CALLED',
    'LEAD_CALLING',
    'LEAD_CONVERTED',
    'RESELLER_WITHDRAW',
    'RESELLER_PAYOUT',
    'WALLET_DEBIT',
    'WALLET_CREDIT'
);
 -   DROP TYPE public."enum_Activity_logs_event";
       public          postgres    false            �           1247    47585963    enum_Banners_action    TYPE     b   CREATE TYPE public."enum_Banners_action" AS ENUM (
    'COLLECTION',
    'LINK',
    'PRODUCT'
);
 (   DROP TYPE public."enum_Banners_action";
       public          postgres    false            �           1247    47585970    enum_Banners_type    TYPE     R   CREATE TYPE public."enum_Banners_type" AS ENUM (
    'HEADER',
    'SEPARATOR'
);
 &   DROP TYPE public."enum_Banners_type";
       public          postgres    false            �           1247    47586012    enum_Campaigns_type    TYPE     b   CREATE TYPE public."enum_Campaigns_type" AS ENUM (
    'LINK',
    'PRODUCT',
    'COLLECTION'
);
 (   DROP TYPE public."enum_Campaigns_type";
       public          postgres    false            ~           1247    47586788    enum_Coupons_coupon_type    TYPE     [   CREATE TYPE public."enum_Coupons_coupon_type" AS ENUM (
    'PRODUCT',
    'COLLECTION'
);
 -   DROP TYPE public."enum_Coupons_coupon_type";
       public          postgres    false            �           1247    47586794    enum_Coupons_discount_type    TYPE     Z   CREATE TYPE public."enum_Coupons_discount_type" AS ENUM (
    'FLAT',
    'PERCENTAGE'
);
 /   DROP TYPE public."enum_Coupons_discount_type";
       public          postgres    false            �           1247    47586098    enum_Leads_source    TYPE     �   CREATE TYPE public."enum_Leads_source" AS ENUM (
    'WHATSAPP',
    'INSTAGRAM',
    'YOUTUBE_CHANNEL',
    'APP',
    'WEBSITE'
);
 &   DROP TYPE public."enum_Leads_source";
       public          postgres    false            �           1247    47586083    enum_Leads_status    TYPE     �   CREATE TYPE public."enum_Leads_status" AS ENUM (
    'OPEN',
    'UNDER_CONNECTION',
    'FOLLOWUP',
    'ON_HOLD',
    'CANCELLED',
    'COMPLETED',
    'COMFIRMED'
);
 &   DROP TYPE public."enum_Leads_status";
       public          postgres    false            �           1247    47586110    enum_Leads_type    TYPE     x   CREATE TYPE public."enum_Leads_type" AS ENUM (
    'HOT_LEAD',
    'WARM_LEAD',
    'COLD_LEAD',
    'NOT_CONNECTED'
);
 $   DROP TYPE public."enum_Leads_type";
       public          postgres    false            �           1247    47586663    enum_Notifications_type    TYPE     �   CREATE TYPE public."enum_Notifications_type" AS ENUM (
    'PRODUCT',
    'COLLECTION',
    'ORDER',
    'SUBSCRIPTION',
    'PROMOTION',
    'INFORMATION',
    'TRANSACTION'
);
 ,   DROP TYPE public."enum_Notifications_type";
       public          postgres    false            �           1247    47586189 !   enum_Order_status_trackers_status    TYPE     k  CREATE TYPE public."enum_Order_status_trackers_status" AS ENUM (
    'NEW',
    'ACCEPTED',
    'DECLINED',
    'PROCESSING',
    'INTRANSIT',
    'OUT_FOR_DELIVERY',
    'DELIVERED',
    'CANCELLED',
    'COMPLETED',
    'PAYOUT_DONE',
    'RTO',
    'RETURN_REQUEST',
    'RETURN_ACCEPTED',
    'RETURN_DECLINED',
    'RETURN_RECEIVED',
    'RETURN_PENDING'
);
 6   DROP TYPE public."enum_Order_status_trackers_status";
       public          postgres    false            �           1247    47586147    enum_Order_variants_status    TYPE     d  CREATE TYPE public."enum_Order_variants_status" AS ENUM (
    'NEW',
    'ACCEPTED',
    'DECLINED',
    'PROCESSING',
    'INTRANSIT',
    'OUT_FOR_DELIVERY',
    'DELIVERED',
    'CANCELLED',
    'COMPLETED',
    'PAYOUT_DONE',
    'RTO',
    'RETURN_REQUEST',
    'RETURN_ACCEPTED',
    'RETURN_DECLINED',
    'RETURN_RECEIVED',
    'RETURN_PENDING'
);
 /   DROP TYPE public."enum_Order_variants_status";
       public          postgres    false            �           1247    47586131    enum_Orders_payment_mode    TYPE     b   CREATE TYPE public."enum_Orders_payment_mode" AS ENUM (
    'COD',
    'PREPAID',
    'WALLET'
);
 -   DROP TYPE public."enum_Orders_payment_mode";
       public          postgres    false                        1247    47586238    enum_Permissions_method    TYPE     v   CREATE TYPE public."enum_Permissions_method" AS ENUM (
    'GET',
    'POST',
    'PUT',
    'DELETE',
    'PATCH'
);
 ,   DROP TYPE public."enum_Permissions_method";
       public          postgres    false            	           1247    47586269 !   enum_Products_shipping_value_type    TYPE     �   CREATE TYPE public."enum_Products_shipping_value_type" AS ENUM (
    'SHIPPING_PRICE',
    'SHIPPING_PERCENTAGE',
    'FREE_SHIPPING'
);
 6   DROP TYPE public."enum_Products_shipping_value_type";
       public          postgres    false            �           1247    47586739    enum_Return_orders_status    TYPE     z   CREATE TYPE public."enum_Return_orders_status" AS ENUM (
    'ACCEPTED',
    'REJECTED',
    'APPROVED',
    'PENDING'
);
 .   DROP TYPE public."enum_Return_orders_status";
       public          postgres    false            $           1247    47586350 #   enum_Store_globals_cod_prepaid_type    TYPE     d   CREATE TYPE public."enum_Store_globals_cod_prepaid_type" AS ENUM (
    'PRICE',
    'PERCENTAGE'
);
 8   DROP TYPE public."enum_Store_globals_cod_prepaid_type";
       public          postgres    false            '           1247    47586356 (   enum_Store_globals_prepaid_discount_type    TYPE     i   CREATE TYPE public."enum_Store_globals_prepaid_discount_type" AS ENUM (
    'PRICE',
    'PERCENTAGE'
);
 =   DROP TYPE public."enum_Store_globals_prepaid_discount_type";
       public          postgres    false            -           1247    47586368 +   enum_Store_globals_selected_payment_gateway    TYPE     �   CREATE TYPE public."enum_Store_globals_selected_payment_gateway" AS ENUM (
    'RAZORPAY',
    'CASHFREE',
    'PHONEPE',
    'NONE'
);
 @   DROP TYPE public."enum_Store_globals_selected_payment_gateway";
       public          postgres    false            0           1247    47586378 $   enum_Store_globals_selected_shipment    TYPE        CREATE TYPE public."enum_Store_globals_selected_shipment" AS ENUM (
    'CUSTOM_COURIER',
    'SHIPROCKET',
    'BLUE_DART'
);
 9   DROP TYPE public."enum_Store_globals_selected_shipment";
       public          postgres    false            *           1247    47586362 &   enum_Store_globals_shipping_value_type    TYPE     g   CREATE TYPE public."enum_Store_globals_shipping_value_type" AS ENUM (
    'PRICE',
    'PERCENTAGE'
);
 ;   DROP TYPE public."enum_Store_globals_shipping_value_type";
       public          postgres    false            3           1247    47586386 +   enum_Store_globals_user_verification_method    TYPE     �   CREATE TYPE public."enum_Store_globals_user_verification_method" AS ENUM (
    'FIREBASE',
    'MSG91',
    'INTERAKT',
    'MSGSSA'
);
 @   DROP TYPE public."enum_Store_globals_user_verification_method";
       public          postgres    false            B           1247    47586459 ,   enum_Store_server_subscriptions_purchaseType    TYPE     h   CREATE TYPE public."enum_Store_server_subscriptions_purchaseType" AS ENUM (
    'ONLINE',
    'CASH'
);
 A   DROP TYPE public."enum_Store_server_subscriptions_purchaseType";
       public          postgres    false            E           1247    47586464 &   enum_Store_server_subscriptions_status    TYPE     u   CREATE TYPE public."enum_Store_server_subscriptions_status" AS ENUM (
    'ACTIVE',
    'REFUNDED',
    'EXPIRED'
);
 ;   DROP TYPE public."enum_Store_server_subscriptions_status";
       public          postgres    false            Q           1247    47586504 '   enum_Store_settings_category_card_style    TYPE     h   CREATE TYPE public."enum_Store_settings_category_card_style" AS ENUM (
    'LANDSCAPE',
    'SQUARE'
);
 <   DROP TYPE public."enum_Store_settings_category_card_style";
       public          postgres    false            N           1247    47586498 &   enum_Store_settings_product_card_style    TYPE     f   CREATE TYPE public."enum_Store_settings_product_card_style" AS ENUM (
    'PORTRAIT',
    'SQUARE'
);
 ;   DROP TYPE public."enum_Store_settings_product_card_style";
       public          postgres    false            K           1247    47586482    enum_Store_settings_store_type    TYPE     �   CREATE TYPE public."enum_Store_settings_store_type" AS ENUM (
    'B2B',
    'ECOMMERCE',
    'RESELLER-ECOMMERCE',
    'RESELLER_ECOMMERCE',
    'WHATSAPP',
    'LANDING',
    'E-COMMERCE'
);
 3   DROP TYPE public."enum_Store_settings_store_type";
       public          postgres    false            ]           1247    47586545 %   enum_Store_subscriptions_purchaseType    TYPE     a   CREATE TYPE public."enum_Store_subscriptions_purchaseType" AS ENUM (
    'ONLINE',
    'CASH'
);
 :   DROP TYPE public."enum_Store_subscriptions_purchaseType";
       public          postgres    false            `           1247    47586550    enum_Store_subscriptions_status    TYPE     n   CREATE TYPE public."enum_Store_subscriptions_status" AS ENUM (
    'ACTIVE',
    'REFUNDED',
    'EXPIRED'
);
 4   DROP TYPE public."enum_Store_subscriptions_status";
       public          postgres    false            W           1247    47586527 !   enum_Store_support_tickets_status    TYPE        CREATE TYPE public."enum_Store_support_tickets_status" AS ENUM (
    'OPEN',
    'CLOSED',
    'IN_PROGRESS',
    'ON_HOLD'
);
 6   DROP TYPE public."enum_Store_support_tickets_status";
       public          postgres    false            u           1247    47586614    enum_Transactions_mode    TYPE     S   CREATE TYPE public."enum_Transactions_mode" AS ENUM (
    'WALLET',
    'MONEY'
);
 +   DROP TYPE public."enum_Transactions_mode";
       public          postgres    false            o           1247    47586601    enum_Transactions_purpose    TYPE     p   CREATE TYPE public."enum_Transactions_purpose" AS ENUM (
    'PURCHASE',
    'REFUND',
    'ADDED_TO_WALLET'
);
 .   DROP TYPE public."enum_Transactions_purpose";
       public          postgres    false            r           1247    47586608    enum_Transactions_txn_type    TYPE     W   CREATE TYPE public."enum_Transactions_txn_type" AS ENUM (
    'DEBIT',
    'CREDIT'
);
 /   DROP TYPE public."enum_Transactions_txn_type";
       public          postgres    false            �           1247    47586644    enum_Wallets_reason    TYPE     z   CREATE TYPE public."enum_Wallets_reason" AS ENUM (
    'PURCHASE',
    'WITHDRAWAL',
    'ADDITION',
    'PAYOUT_SENT'
);
 (   DROP TYPE public."enum_Wallets_reason";
       public          postgres    false            �           1247    47586639    enum_Wallets_transaction_type    TYPE     Z   CREATE TYPE public."enum_Wallets_transaction_type" AS ENUM (
    'DEBIT',
    'CREDIT'
);
 2   DROP TYPE public."enum_Wallets_transaction_type";
       public          postgres    false            �            1259    47585944    Activity_logs    TABLE       CREATE TABLE public."Activity_logs" (
    id integer NOT NULL,
    description text,
    event public."enum_Activity_logs_event" NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
 #   DROP TABLE public."Activity_logs";
       public         heap    postgres    false    937            �            1259    47585943    Activity_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Activity_logs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Activity_logs_id_seq";
       public          postgres    false    212            K           0    0    Activity_logs_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Activity_logs_id_seq" OWNED BY public."Activity_logs".id;
          public          postgres    false    211            �            1259    47585953 	   Addresses    TABLE     �  CREATE TABLE public."Addresses" (
    id integer NOT NULL,
    name character varying(255),
    "houseNumber" character varying(255),
    "addressLine1" character varying(255) NOT NULL,
    "countryCode" character varying(255) DEFAULT '+91'::character varying NOT NULL,
    phone character varying(255),
    pincode character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    "addressLine2" character varying(255),
    area character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
    DROP TABLE public."Addresses";
       public         heap    postgres    false            �            1259    47585952    Addresses_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Addresses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_id_seq";
       public          postgres    false    214            L           0    0    Addresses_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Addresses_id_seq" OWNED BY public."Addresses".id;
          public          postgres    false    213            �            1259    47585976    Banners    TABLE     �  CREATE TABLE public."Banners" (
    id integer NOT NULL,
    action public."enum_Banners_action" NOT NULL,
    type public."enum_Banners_type" DEFAULT 'HEADER'::public."enum_Banners_type",
    data character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "MobileThumbnailId" integer,
    "DesktopThumbnailId" integer
);
    DROP TABLE public."Banners";
       public         heap    postgres    false    949    949    946            �            1259    47585975    Banners_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Banners_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Banners_id_seq";
       public          postgres    false    216            M           0    0    Banners_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Banners_id_seq" OWNED BY public."Banners".id;
          public          postgres    false    215            �            1259    47586003    Bulk_pricings    TABLE     0  CREATE TABLE public."Bulk_pricings" (
    id integer NOT NULL,
    "from" numeric NOT NULL,
    "to" numeric NOT NULL,
    price numeric NOT NULL,
    "premiumPrice" numeric,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "VariantId" integer
);
 #   DROP TABLE public."Bulk_pricings";
       public         heap    postgres    false            �            1259    47586002    Bulk_pricings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Bulk_pricings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Bulk_pricings_id_seq";
       public          postgres    false    222            N           0    0    Bulk_pricings_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Bulk_pricings_id_seq" OWNED BY public."Bulk_pricings".id;
          public          postgres    false    221            �            1259    47586020 	   Campaigns    TABLE     �  CREATE TABLE public."Campaigns" (
    id integer NOT NULL,
    notification_title character varying(255),
    notification_body character varying(255),
    notification_image character varying(255),
    schedule_time timestamp with time zone,
    type public."enum_Campaigns_type",
    web_notification boolean,
    app_notification boolean,
    data text,
    image_url character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Campaigns";
       public         heap    postgres    false    964            �            1259    47586019    Campaigns_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Campaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Campaigns_id_seq";
       public          postgres    false    224            O           0    0    Campaigns_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Campaigns_id_seq" OWNED BY public."Campaigns".id;
          public          postgres    false    223            �            1259    47586036    CartVariants    TABLE     �   CREATE TABLE public."CartVariants" (
    quantity integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CartId" integer NOT NULL,
    "VariantId" integer NOT NULL
);
 "   DROP TABLE public."CartVariants";
       public         heap    postgres    false            �            1259    47586029    Carts    TABLE     �   CREATE TABLE public."Carts" (
    id integer NOT NULL,
    "totalPrice" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
    DROP TABLE public."Carts";
       public         heap    postgres    false            �            1259    47586028    Carts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Carts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Carts_id_seq";
       public          postgres    false    226            P           0    0    Carts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Carts_id_seq" OWNED BY public."Carts".id;
          public          postgres    false    225            �            1259    47586042 
   Categories    TABLE     �   CREATE TABLE public."Categories" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ThumbnailId" integer
);
     DROP TABLE public."Categories";
       public         heap    postgres    false            �            1259    47586041    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public          postgres    false    229            Q           0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public          postgres    false    228            >           1259    47586809    CollectionProduct    TABLE     �   CREATE TABLE public."CollectionProduct" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CollectionId" integer NOT NULL,
    "ProductId" integer NOT NULL
);
 '   DROP TABLE public."CollectionProduct";
       public         heap    postgres    false            �            1259    47586056    Collection_statics    TABLE     �   CREATE TABLE public."Collection_statics" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    tag character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."Collection_statics";
       public         heap    postgres    false            �            1259    47586055    Collection_statics_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Collection_statics_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Collection_statics_id_seq";
       public          postgres    false    233            R           0    0    Collection_statics_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Collection_statics_id_seq" OWNED BY public."Collection_statics".id;
          public          postgres    false    232            �            1259    47586049    Collections    TABLE       CREATE TABLE public."Collections" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ThumbnailId" integer,
    "ProductId" integer
);
 !   DROP TABLE public."Collections";
       public         heap    postgres    false            �            1259    47586048    Collections_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Collections_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Collections_id_seq";
       public          postgres    false    231            S           0    0    Collections_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Collections_id_seq" OWNED BY public."Collections".id;
          public          postgres    false    230            D           1259    47586839    CouponProduct    TABLE     �   CREATE TABLE public."CouponProduct" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CouponId" integer NOT NULL,
    "ProductId" integer NOT NULL
);
 #   DROP TABLE public."CouponProduct";
       public         heap    postgres    false            =           1259    47586800    Coupons    TABLE     0  CREATE TABLE public."Coupons" (
    id integer NOT NULL,
    coupon_code character varying(255),
    message character varying(255),
    discount_value numeric,
    valid_from timestamp with time zone,
    valid_to timestamp with time zone,
    active boolean DEFAULT true,
    coupon_type public."enum_Coupons_coupon_type",
    discount_type public."enum_Coupons_discount_type",
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CollectionId" integer,
    "MediaId" integer,
    "ProductId" integer
);
    DROP TABLE public."Coupons";
       public         heap    postgres    false    1153    1150            <           1259    47586799    Coupons_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Coupons_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Coupons_id_seq";
       public          postgres    false    317            T           0    0    Coupons_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Coupons_id_seq" OWNED BY public."Coupons".id;
          public          postgres    false    316            B           1259    47586829    Courier_media_link    TABLE     �   CREATE TABLE public."Courier_media_link" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "MediaId" integer NOT NULL,
    "CustomCourierId" integer NOT NULL
);
 (   DROP TABLE public."Courier_media_link";
       public         heap    postgres    false            �            1259    47586065    Custom_couriers    TABLE     �  CREATE TABLE public."Custom_couriers" (
    id integer NOT NULL,
    "trackingId" character varying(255) NOT NULL,
    "courierName" character varying(255) NOT NULL,
    "courierEmail" character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "OrderVariantId" integer
);
 %   DROP TABLE public."Custom_couriers";
       public         heap    postgres    false            �            1259    47586064    Custom_couriers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Custom_couriers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Custom_couriers_id_seq";
       public          postgres    false    235            U           0    0    Custom_couriers_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Custom_couriers_id_seq" OWNED BY public."Custom_couriers".id;
          public          postgres    false    234            ;           1259    47586775 
   Free_plans    TABLE     �  CREATE TABLE public."Free_plans" (
    id integer NOT NULL,
    name character varying(255),
    description text,
    "maxUsers" integer,
    "maxProducts" integer,
    "premiumPricing" boolean DEFAULT false,
    "codAllowed" boolean DEFAULT true,
    "prepaidAllowed" boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Free_plans";
       public         heap    postgres    false            :           1259    47586774    Free_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Free_plans_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Free_plans_id_seq";
       public          postgres    false    315            V           0    0    Free_plans_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Free_plans_id_seq" OWNED BY public."Free_plans".id;
          public          postgres    false    314            +           1259    47586696    Global_brands    TABLE     ~  CREATE TABLE public."Global_brands" (
    id integer NOT NULL,
    name character varying(255),
    tagline character varying(255),
    whatsapp_number character varying(255),
    calling_number character varying(255),
    email character varying(255),
    about_us text,
    address character varying(255),
    instagram character varying(255),
    facebook character varying(255),
    telegram character varying(255),
    youtube character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "LogoIdDark" integer,
    "LogoIdLight" integer,
    "FavIconId" integer
);
 #   DROP TABLE public."Global_brands";
       public         heap    postgres    false            *           1259    47586695    Global_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Global_brands_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Global_brands_id_seq";
       public          postgres    false    299            W           0    0    Global_brands_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Global_brands_id_seq" OWNED BY public."Global_brands".id;
          public          postgres    false    298            �            1259    47586074    Groups    TABLE     �   CREATE TABLE public."Groups" (
    id integer NOT NULL,
    name text NOT NULL,
    url text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Groups";
       public         heap    postgres    false            �            1259    47586073    Groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Groups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Groups_id_seq";
       public          postgres    false    237            X           0    0    Groups_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Groups_id_seq" OWNED BY public."Groups".id;
          public          postgres    false    236            �            1259    47586120    Leads    TABLE     Y  CREATE TABLE public."Leads" (
    id integer NOT NULL,
    name character varying(255),
    phone character varying(255),
    country_code character varying(255) DEFAULT '+91'::character varying,
    status public."enum_Leads_status" DEFAULT 'OPEN'::public."enum_Leads_status",
    source public."enum_Leads_source",
    type public."enum_Leads_type",
    consumer_note text,
    staff_note text,
    quantity integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductId" integer,
    "AssignedTo" integer,
    "StoreUserId" integer
);
    DROP TABLE public."Leads";
       public         heap    postgres    false    991    991    997    994            �            1259    47586119    Leads_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Leads_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Leads_id_seq";
       public          postgres    false    239            Y           0    0    Leads_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Leads_id_seq" OWNED BY public."Leads".id;
          public          postgres    false    238            9           1259    47586767    Marquees    TABLE     �   CREATE TABLE public."Marquees" (
    id integer NOT NULL,
    name character varying(255),
    active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ImageId" integer
);
    DROP TABLE public."Marquees";
       public         heap    postgres    false            8           1259    47586766    Marquees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Marquees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Marquees_id_seq";
       public          postgres    false    313            Z           0    0    Marquees_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Marquees_id_seq" OWNED BY public."Marquees".id;
          public          postgres    false    312            �            1259    47585984    Media    TABLE     M  CREATE TABLE public."Media" (
    id integer NOT NULL,
    name character varying(255),
    path character varying(255),
    url character varying(255),
    width integer,
    height integer,
    size numeric,
    formats jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Media";
       public         heap    postgres    false            �            1259    47585983    Media_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Media_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Media_id_seq";
       public          postgres    false    218            [           0    0    Media_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Media_id_seq" OWNED BY public."Media".id;
          public          postgres    false    217            '           1259    47586678    Notifications    TABLE     A  CREATE TABLE public."Notifications" (
    id integer NOT NULL,
    title character varying(255),
    desctiption text,
    type public."enum_Notifications_type",
    "isRead" boolean,
    data character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Notifications";
       public         heap    postgres    false    1189            &           1259    47586677    Notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_id_seq";
       public          postgres    false    295            \           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    294            �            1259    47586222    Order_status_trackers    TABLE       CREATE TABLE public."Order_status_trackers" (
    id integer NOT NULL,
    status public."enum_Order_status_trackers_status",
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "OrderVariantId" integer
);
 +   DROP TABLE public."Order_status_trackers";
       public         heap    postgres    false    1015            �            1259    47586221    Order_status_trackers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_status_trackers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Order_status_trackers_id_seq";
       public          postgres    false    245            ]           0    0    Order_status_trackers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Order_status_trackers_id_seq" OWNED BY public."Order_status_trackers".id;
          public          postgres    false    244            �            1259    47586180    Order_variants    TABLE     �  CREATE TABLE public."Order_variants" (
    id integer NOT NULL,
    quantity integer NOT NULL,
    price integer NOT NULL,
    selling_price integer,
    status public."enum_Order_variants_status" NOT NULL,
    is_cod_paid boolean,
    note text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "VariantId" integer,
    "OrderId" integer,
    "ShipRocketOrderItemId" integer,
    "CustomCourierId" integer
);
 $   DROP TABLE public."Order_variants";
       public         heap    postgres    false    1009            �            1259    47586179    Order_variants_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_variants_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Order_variants_id_seq";
       public          postgres    false    243            ^           0    0    Order_variants_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Order_variants_id_seq" OWNED BY public."Order_variants".id;
          public          postgres    false    242            �            1259    47586138    Orders    TABLE     r  CREATE TABLE public."Orders" (
    id integer NOT NULL,
    slug character varying(255),
    payment_order_id character varying(255),
    payment_id character varying(255),
    payment_signature character varying(255),
    price numeric,
    payment_mode public."enum_Orders_payment_mode",
    is_paid boolean,
    consumer_name character varying(255),
    consumer_email character varying(255),
    consumer_phone character varying(255),
    is_reseller_order boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AddressId" integer,
    "StoreUserId" integer
);
    DROP TABLE public."Orders";
       public         heap    postgres    false    1003            �            1259    47586137    Orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public          postgres    false    241            _           0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public          postgres    false    240            �            1259    47586229    Payment_logs    TABLE       CREATE TABLE public."Payment_logs" (
    id integer NOT NULL,
    order_id character varying(255),
    payment_id character varying(255),
    amount numeric,
    amount_refunded numeric,
    currency character varying(255),
    status character varying(255),
    method character varying(255),
    captured boolean,
    card_id character varying(255),
    card character varying(255),
    last4 character varying(255),
    network character varying(255),
    bank character varying(255),
    wallet character varying(255),
    vpa character varying(255),
    email character varying(255),
    contact character varying(255),
    notes character varying(255),
    client character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Payment_logs";
       public         heap    postgres    false            �            1259    47586228    Payment_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Payment_logs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Payment_logs_id_seq";
       public          postgres    false    247            `           0    0    Payment_logs_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Payment_logs_id_seq" OWNED BY public."Payment_logs".id;
          public          postgres    false    246            )           1259    47586687    Payout_logs    TABLE     g  CREATE TABLE public."Payout_logs" (
    id integer NOT NULL,
    payout_id character varying(255),
    fund_account_id character varying(255),
    account_type character varying(255),
    amount character varying(255),
    currency character varying(255),
    mode character varying(255),
    purpose character varying(255),
    vpa character varying(255),
    name character varying(255),
    contact character varying(255),
    contact_id character varying(255),
    status character varying(255),
    reference_id character varying(255),
    fund_account_contact_id character varying(255),
    fund_bank_account_ifsc character varying(255),
    fund_bank_account_number character varying(255),
    fund_bank_name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
 !   DROP TABLE public."Payout_logs";
       public         heap    postgres    false            (           1259    47586686    Payout_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Payout_logs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Payout_logs_id_seq";
       public          postgres    false    297            a           0    0    Payout_logs_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Payout_logs_id_seq" OWNED BY public."Payout_logs".id;
          public          postgres    false    296            �            1259    47586250    Permissions    TABLE     M  CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    api character varying(255) NOT NULL,
    endpoint character varying(255) NOT NULL,
    method public."enum_Permissions_method",
    handler character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Permissions";
       public         heap    postgres    false    1024            �            1259    47586249    Permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Permissions_id_seq";
       public          postgres    false    249            b           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
          public          postgres    false    248            �            1259    47586260    Privacy_policies    TABLE       CREATE TABLE public."Privacy_policies" (
    id integer NOT NULL,
    name character varying(255),
    year character varying(255) NOT NULL,
    descrpition text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."Privacy_policies";
       public         heap    postgres    false            �            1259    47586259    Privacy_policies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Privacy_policies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Privacy_policies_id_seq";
       public          postgres    false    251            c           0    0    Privacy_policies_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Privacy_policies_id_seq" OWNED BY public."Privacy_policies".id;
          public          postgres    false    250                        1259    47586303    ProductTags    TABLE     �   CREATE TABLE public."ProductTags" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "TagId" integer NOT NULL,
    "ProductId" integer NOT NULL
);
 !   DROP TABLE public."ProductTags";
       public         heap    postgres    false            @           1259    47586819    Product_gallery    TABLE     �   CREATE TABLE public."Product_gallery" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductId" integer NOT NULL,
    "MediaId" integer NOT NULL
);
 %   DROP TABLE public."Product_gallery";
       public         heap    postgres    false            �            1259    47586292    Product_metrics    TABLE     z  CREATE TABLE public."Product_metrics" (
    id integer NOT NULL,
    view_count integer DEFAULT 0,
    ordered_count integer DEFAULT 0,
    return_count integer DEFAULT 0,
    shares_count integer DEFAULT 0,
    revenue_generated integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductId" integer
);
 %   DROP TABLE public."Product_metrics";
       public         heap    postgres    false            �            1259    47586291    Product_metrics_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_metrics_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Product_metrics_id_seq";
       public          postgres    false    255            d           0    0    Product_metrics_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Product_metrics_id_seq" OWNED BY public."Product_metrics".id;
          public          postgres    false    254            -           1259    47586706    Product_policies    TABLE     �   CREATE TABLE public."Product_policies" (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."Product_policies";
       public         heap    postgres    false            ,           1259    47586705    Product_policies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_policies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Product_policies_id_seq";
       public          postgres    false    301            e           0    0    Product_policies_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Product_policies_id_seq" OWNED BY public."Product_policies".id;
          public          postgres    false    300            ?           1259    47586814    Product_review_gallery    TABLE     �   CREATE TABLE public."Product_review_gallery" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductReviewId" integer NOT NULL,
    "MediumId" integer NOT NULL
);
 ,   DROP TABLE public."Product_review_gallery";
       public         heap    postgres    false            7           1259    47586758    Product_reviews    TABLE     ]  CREATE TABLE public."Product_reviews" (
    id integer NOT NULL,
    name character varying(255),
    title character varying(255),
    rating numeric,
    review text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductId" integer,
    "StoreUserId" integer,
    "AvatarId" integer
);
 %   DROP TABLE public."Product_reviews";
       public         heap    postgres    false            6           1259    47586757    Product_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_reviews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Product_reviews_id_seq";
       public          postgres    false    311            f           0    0    Product_reviews_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Product_reviews_id_seq" OWNED BY public."Product_reviews".id;
          public          postgres    false    310            �            1259    47586276    Products    TABLE       CREATE TABLE public."Products" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    is_active boolean DEFAULT true,
    cod_enabled boolean DEFAULT false,
    product_return boolean DEFAULT false,
    return_days integer DEFAULT 7,
    shipping_value numeric,
    enquiry_enabled boolean DEFAULT true,
    show_price boolean DEFAULT true,
    shipping_value_type public."enum_Products_shipping_value_type" NOT NULL,
    yt_video_link character varying(255),
    rating double precision DEFAULT '0'::double precision,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CollectionStaticId" integer,
    "CategoryId" integer,
    "SubCategoryId" integer,
    "ThumbnailId" integer
);
    DROP TABLE public."Products";
       public         heap    postgres    false    1033            �            1259    47586275    Products_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_id_seq";
       public          postgres    false    253            g           0    0    Products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_id_seq" OWNED BY public."Products".id;
          public          postgres    false    252            /           1259    47586715    Promotional_messages    TABLE     �   CREATE TABLE public."Promotional_messages" (
    id integer NOT NULL,
    title character varying(255),
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 *   DROP TABLE public."Promotional_messages";
       public         heap    postgres    false            .           1259    47586714    Promotional_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Promotional_messages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Promotional_messages_id_seq";
       public          postgres    false    303            h           0    0    Promotional_messages_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Promotional_messages_id_seq" OWNED BY public."Promotional_messages".id;
          public          postgres    false    302            5           1259    47586748    Return_orders    TABLE     k  CREATE TABLE public."Return_orders" (
    id integer NOT NULL,
    note text,
    status public."enum_Return_orders_status" DEFAULT 'PENDING'::public."enum_Return_orders_status",
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ImageId" integer,
    "StoreUserId" integer,
    "OrderVariantId" integer
);
 #   DROP TABLE public."Return_orders";
       public         heap    postgres    false    1213    1213            4           1259    47586747    Return_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Return_orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Return_orders_id_seq";
       public          postgres    false    309            i           0    0    Return_orders_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Return_orders_id_seq" OWNED BY public."Return_orders".id;
          public          postgres    false    308                       1259    47586317    Role_permissions    TABLE     �   CREATE TABLE public."Role_permissions" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RoleId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);
 &   DROP TABLE public."Role_permissions";
       public         heap    postgres    false                       1259    47586309    Roles    TABLE     �   CREATE TABLE public."Roles" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Roles";
       public         heap    postgres    false                       1259    47586308    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    258            j           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    257            	           1259    47586341    Ship_rocket_orderitems    TABLE     �  CREATE TABLE public."Ship_rocket_orderitems" (
    id integer NOT NULL,
    name text NOT NULL,
    sku text NOT NULL,
    units text NOT NULL,
    selling_price text NOT NULL,
    discount text NOT NULL,
    tax text NOT NULL,
    hsn text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ShipRocketOrderId" integer,
    "OrderVariantId" integer,
    "ShipRocketReturnId" integer
);
 ,   DROP TABLE public."Ship_rocket_orderitems";
       public         heap    postgres    false                       1259    47586340    Ship_rocket_orderitems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ship_rocket_orderitems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Ship_rocket_orderitems_id_seq";
       public          postgres    false    265            k           0    0    Ship_rocket_orderitems_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Ship_rocket_orderitems_id_seq" OWNED BY public."Ship_rocket_orderitems".id;
          public          postgres    false    264                       1259    47586323    Ship_rocket_orders    TABLE     �  CREATE TABLE public."Ship_rocket_orders" (
    id integer NOT NULL,
    order_id text NOT NULL,
    order_date text NOT NULL,
    pickup_location text NOT NULL,
    billing_customer_name text NOT NULL,
    billing_city text NOT NULL,
    billing_pincode text NOT NULL,
    billing_state text NOT NULL,
    billing_country text NOT NULL,
    billing_email text NOT NULL,
    billing_phone text NOT NULL,
    payment_method text NOT NULL,
    shipping_charges text NOT NULL,
    giftwrap_charges text NOT NULL,
    transaction_charges text NOT NULL,
    total_discount text NOT NULL,
    sub_total text NOT NULL,
    length text NOT NULL,
    breadth text NOT NULL,
    height text NOT NULL,
    weight text NOT NULL,
    billing_address text NOT NULL,
    shiprocket_order_id text NOT NULL,
    shipment_id text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."Ship_rocket_orders";
       public         heap    postgres    false                       1259    47586322    Ship_rocket_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ship_rocket_orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Ship_rocket_orders_id_seq";
       public          postgres    false    261            l           0    0    Ship_rocket_orders_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Ship_rocket_orders_id_seq" OWNED BY public."Ship_rocket_orders".id;
          public          postgres    false    260                       1259    47586332    Ship_rocket_returns    TABLE       CREATE TABLE public."Ship_rocket_returns" (
    id integer NOT NULL,
    length text NOT NULL,
    breadth text NOT NULL,
    height text NOT NULL,
    weight text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."Ship_rocket_returns";
       public         heap    postgres    false                       1259    47586331    Ship_rocket_returns_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ship_rocket_returns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Ship_rocket_returns_id_seq";
       public          postgres    false    263            m           0    0    Ship_rocket_returns_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Ship_rocket_returns_id_seq" OWNED BY public."Ship_rocket_returns".id;
          public          postgres    false    262                       1259    47586396    Store_globals    TABLE     G  CREATE TABLE public."Store_globals" (
    id integer NOT NULL,
    subscription_price integer DEFAULT 0,
    cod_enabled boolean DEFAULT false,
    cod_prepaid numeric DEFAULT 0,
    cod_prepaid_type public."enum_Store_globals_cod_prepaid_type" DEFAULT 'PRICE'::public."enum_Store_globals_cod_prepaid_type",
    prepaid_discount numeric DEFAULT 0,
    prepaid_discount_type public."enum_Store_globals_prepaid_discount_type" DEFAULT 'PRICE'::public."enum_Store_globals_prepaid_discount_type",
    shipping_value integer DEFAULT 0,
    shipping_value_type public."enum_Store_globals_shipping_value_type" DEFAULT 'PRICE'::public."enum_Store_globals_shipping_value_type",
    razorpay_key character varying(255) DEFAULT 'rzp_test_X862k3ZFG0a9mY'::character varying,
    razorpay_secret character varying(255) DEFAULT 'igRAhI6pszT6iXlD743eOM3O'::character varying,
    withdraw_limit integer DEFAULT 0,
    "razorpayX_account_number" character varying(255),
    shiprocket_username character varying(255),
    shiprocket_password character varying(255),
    is_shiprocket_enabled boolean,
    shiprocket_token text,
    selected_payment_gateway public."enum_Store_globals_selected_payment_gateway" DEFAULT 'RAZORPAY'::public."enum_Store_globals_selected_payment_gateway",
    selected_shipment public."enum_Store_globals_selected_shipment" DEFAULT 'CUSTOM_COURIER'::public."enum_Store_globals_selected_shipment",
    bulk_pricing boolean DEFAULT true,
    cashfree_client_secret character varying(255),
    cashfree_client_id character varying(255),
    phonepe_merchant_id character varying(255),
    phonepe_merchant_key character varying(255),
    phonepe_key_index character varying(255),
    firebase_auth json,
    firebase_topic character varying(255),
    user_verification_method public."enum_Store_globals_user_verification_method" DEFAULT 'MSGSSA'::public."enum_Store_globals_user_verification_method",
    msg_balance integer DEFAULT 10,
    msg91_template_id character varying(255),
    msg91_api_key character varying(255),
    return_request boolean DEFAULT false,
    return_request_period integer DEFAULT 0,
    store_link character varying(255),
    personal_id character varying(255),
    notification_enabled boolean DEFAULT false,
    interakt_api_key character varying(255) DEFAULT 'MjVFdVlrTXB2UlpWdjFtcm1adnozaURRNlNTLTNrcEtfenVJck9pNGNTdzo='::character varying,
    otp_template_id character varying(255) DEFAULT 'send_otp'::character varying,
    campaign_template_id character varying(255),
    order_template_id character varying(255),
    product_template_id character varying(255),
    collection_template_id character varying(255),
    subscription_template_id character varying(255),
    payout_template_id character varying(255),
    facebook_pixel text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Store_globals";
       public         heap    postgres    false    1060    1063    1066    1069    1072    1075    1060    1063    1066    1069    1072    1075            
           1259    47586395    Store_globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_globals_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Store_globals_id_seq";
       public          postgres    false    267            n           0    0    Store_globals_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Store_globals_id_seq" OWNED BY public."Store_globals".id;
          public          postgres    false    266                       1259    47586427    Store_payment_logs    TABLE     $  CREATE TABLE public."Store_payment_logs" (
    id integer NOT NULL,
    order_id character varying(255),
    payment_id character varying(255),
    amount numeric,
    amount_refunded numeric,
    currency character varying(255),
    status character varying(255),
    method character varying(255),
    captured boolean,
    card_id character varying(255),
    card character varying(255),
    last4 character varying(255),
    network character varying(255),
    bank character varying(255),
    wallet character varying(255),
    vpa character varying(255),
    email character varying(255),
    contact character varying(255),
    notes character varying(255),
    client character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."Store_payment_logs";
       public         heap    postgres    false                       1259    47586426    Store_payment_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_payment_logs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Store_payment_logs_id_seq";
       public          postgres    false    269            o           0    0    Store_payment_logs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Store_payment_logs_id_seq" OWNED BY public."Store_payment_logs".id;
          public          postgres    false    268                       1259    47586436    Store_plans    TABLE     �  CREATE TABLE public."Store_plans" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    validity integer NOT NULL,
    price numeric NOT NULL,
    description character varying(255) NOT NULL,
    premium_pricing boolean DEFAULT false NOT NULL,
    cod_allowed boolean DEFAULT false,
    prepaid_allowed boolean DEFAULT false,
    is_active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Store_plans";
       public         heap    postgres    false                       1259    47586435    Store_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_plans_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Store_plans_id_seq";
       public          postgres    false    271            p           0    0    Store_plans_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Store_plans_id_seq" OWNED BY public."Store_plans".id;
          public          postgres    false    270                       1259    47586449    Store_policies    TABLE     F  CREATE TABLE public."Store_policies" (
    id integer NOT NULL,
    about_us text,
    terms_and_conditions text,
    privacy_policy text,
    refund_and_cancellation text,
    ship_and_delivery text,
    contact_us text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."Store_policies";
       public         heap    postgres    false                       1259    47586448    Store_policies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_policies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Store_policies_id_seq";
       public          postgres    false    273            q           0    0    Store_policies_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Store_policies_id_seq" OWNED BY public."Store_policies".id;
          public          postgres    false    272                       1259    47586472    Store_server_subscriptions    TABLE     (  CREATE TABLE public."Store_server_subscriptions" (
    id integer NOT NULL,
    order_id character varying(255) NOT NULL,
    amount numeric,
    payment_id character varying(255),
    "purchaseType" public."enum_Store_server_subscriptions_purchaseType",
    valid_from timestamp with time zone NOT NULL,
    valid_to timestamp with time zone NOT NULL,
    is_paid boolean DEFAULT false,
    status public."enum_Store_server_subscriptions_status",
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 0   DROP TABLE public."Store_server_subscriptions";
       public         heap    postgres    false    1090    1093                       1259    47586471 !   Store_server_subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_server_subscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Store_server_subscriptions_id_seq";
       public          postgres    false    275            r           0    0 !   Store_server_subscriptions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Store_server_subscriptions_id_seq" OWNED BY public."Store_server_subscriptions".id;
          public          postgres    false    274                       1259    47586510    Store_settings    TABLE       CREATE TABLE public."Store_settings" (
    id integer NOT NULL,
    store_type public."enum_Store_settings_store_type",
    primary_color character varying(255),
    nav_bg_color character varying(255) DEFAULT '#FFFFFF'::character varying,
    nav_text_color character varying(255) DEFAULT '#222222'::character varying,
    secondary_color character varying(255),
    bg_color character varying(255) DEFAULT '#222222'::character varying,
    text_color character varying(255),
    button_color character varying(255),
    logo_size character varying(255),
    is_app_enabled boolean,
    is_maintenance_mode boolean,
    is_store_active boolean,
    store_inactive_message text,
    store_maintenance_message text,
    is_pricing_visible boolean,
    is_cart_enabled boolean,
    is_wallet_enabled boolean,
    product_card_style public."enum_Store_settings_product_card_style",
    category_card_style public."enum_Store_settings_category_card_style",
    product_list_span_mobile integer,
    product_list_span_desktop integer,
    show_marquee boolean DEFAULT true,
    show_collection boolean DEFAULT true,
    show_banner boolean DEFAULT true,
    show_stories boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."Store_settings";
       public         heap    postgres    false    1099    1102    1105                       1259    47586509    Store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_settings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Store_settings_id_seq";
       public          postgres    false    277            s           0    0    Store_settings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Store_settings_id_seq" OWNED BY public."Store_settings".id;
          public          postgres    false    276                       1259    47586558    Store_subscriptions    TABLE     N  CREATE TABLE public."Store_subscriptions" (
    id integer NOT NULL,
    amount numeric DEFAULT 0,
    order_id character varying(255) NOT NULL,
    payment_id character varying(255),
    "purchaseType" public."enum_Store_subscriptions_purchaseType",
    valid_from timestamp with time zone NOT NULL,
    valid_to timestamp with time zone NOT NULL,
    is_paid boolean DEFAULT false,
    status public."enum_Store_subscriptions_status",
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer,
    "PlanId" integer
);
 )   DROP TABLE public."Store_subscriptions";
       public         heap    postgres    false    1120    1117                       1259    47586557    Store_subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_subscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Store_subscriptions_id_seq";
       public          postgres    false    281            t           0    0    Store_subscriptions_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Store_subscriptions_id_seq" OWNED BY public."Store_subscriptions".id;
          public          postgres    false    280                       1259    47586536    Store_support_tickets    TABLE     f  CREATE TABLE public."Store_support_tickets" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status public."enum_Store_support_tickets_status" NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
 +   DROP TABLE public."Store_support_tickets";
       public         heap    postgres    false    1111                       1259    47586535    Store_support_tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_support_tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Store_support_tickets_id_seq";
       public          postgres    false    279            u           0    0    Store_support_tickets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Store_support_tickets_id_seq" OWNED BY public."Store_support_tickets".id;
          public          postgres    false    278                       1259    47586569    Store_users    TABLE     E  CREATE TABLE public."Store_users" (
    id integer NOT NULL,
    name character varying(255) DEFAULT 'Guest'::character varying,
    email character varying(255),
    password character varying(255),
    confirmed boolean DEFAULT false,
    phone character varying(255),
    country_code character varying(255) DEFAULT '+91'::character varying,
    wallet_balance double precision DEFAULT '0'::double precision,
    password_reset_token character varying(255),
    "FCM_app_token" character varying(255),
    "FCM_web_token" character varying(255),
    "isPremium" boolean DEFAULT false,
    otp character varying(255),
    otp_expiration timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CartId" integer,
    "RoleId" integer,
    "AvatarId" integer
);
 !   DROP TABLE public."Store_users";
       public         heap    postgres    false                       1259    47586568    Store_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Store_users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Store_users_id_seq";
       public          postgres    false    283            v           0    0    Store_users_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Store_users_id_seq" OWNED BY public."Store_users".id;
          public          postgres    false    282            3           1259    47586732    Stories    TABLE     �   CREATE TABLE public."Stories" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "VideoId" integer,
    "ThumbialId" integer
);
    DROP TABLE public."Stories";
       public         heap    postgres    false            2           1259    47586731    Stories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Stories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Stories_id_seq";
       public          postgres    false    307            w           0    0    Stories_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Stories_id_seq" OWNED BY public."Stories".id;
          public          postgres    false    306            C           1259    47586834    StoryProduct    TABLE     �   CREATE TABLE public."StoryProduct" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoryId" integer NOT NULL,
    "ProductId" integer NOT NULL
);
 "   DROP TABLE public."StoryProduct";
       public         heap    postgres    false                       1259    47586587    Sub_categories    TABLE       CREATE TABLE public."Sub_categories" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CategoryId" integer,
    "ThumbnailId" integer
);
 $   DROP TABLE public."Sub_categories";
       public         heap    postgres    false                       1259    47586586    Sub_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Sub_categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Sub_categories_id_seq";
       public          postgres    false    285            x           0    0    Sub_categories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Sub_categories_id_seq" OWNED BY public."Sub_categories".id;
          public          postgres    false    284                       1259    47586594    Tags    TABLE     �   CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Tags";
       public         heap    postgres    false                       1259    47586593    Tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Tags_id_seq";
       public          postgres    false    287            y           0    0    Tags_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;
          public          postgres    false    286            1           1259    47586723    Testimonials    TABLE     :  CREATE TABLE public."Testimonials" (
    id integer NOT NULL,
    name character varying(255),
    content text,
    rating numeric,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer,
    "VideoId" integer,
    "ThumbnailId" integer
);
 "   DROP TABLE public."Testimonials";
       public         heap    postgres    false            0           1259    47586722    Testimonials_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Testimonials_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Testimonials_id_seq";
       public          postgres    false    305            z           0    0    Testimonials_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Testimonials_id_seq" OWNED BY public."Testimonials".id;
          public          postgres    false    304            !           1259    47586620    Transactions    TABLE     �  CREATE TABLE public."Transactions" (
    id integer NOT NULL,
    purpose public."enum_Transactions_purpose" NOT NULL,
    txn_type public."enum_Transactions_txn_type" NOT NULL,
    txn_id character varying(255),
    remark text,
    mode public."enum_Transactions_mode" NOT NULL,
    amount numeric NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
 "   DROP TABLE public."Transactions";
       public         heap    postgres    false    1138    1141    1135                        1259    47586619    Transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transactions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Transactions_id_seq";
       public          postgres    false    289            {           0    0    Transactions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Transactions_id_seq" OWNED BY public."Transactions".id;
          public          postgres    false    288            #           1259    47586629 	   Tutorials    TABLE       CREATE TABLE public."Tutorials" (
    id integer NOT NULL,
    name character varying(255),
    video_url character varying(255),
    description text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ThumbnailId" integer
);
    DROP TABLE public."Tutorials";
       public         heap    postgres    false            "           1259    47586628    Tutorials_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tutorials_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Tutorials_id_seq";
       public          postgres    false    291            |           0    0    Tutorials_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Tutorials_id_seq" OWNED BY public."Tutorials".id;
          public          postgres    false    290            A           1259    47586824    Variant_gallery    TABLE     �   CREATE TABLE public."Variant_gallery" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "VariantId" integer NOT NULL,
    "MediaId" integer NOT NULL
);
 %   DROP TABLE public."Variant_gallery";
       public         heap    postgres    false            �            1259    47585993    Variants    TABLE     �  CREATE TABLE public."Variants" (
    id integer NOT NULL,
    name character varying(255),
    price numeric NOT NULL,
    premium_price numeric,
    strike_price numeric,
    quantity integer NOT NULL,
    is_active boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProductId" integer,
    "ThumbnailId" integer
);
    DROP TABLE public."Variants";
       public         heap    postgres    false            �            1259    47585992    Variants_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Variants_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Variants_id_seq";
       public          postgres    false    220            }           0    0    Variants_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Variants_id_seq" OWNED BY public."Variants".id;
          public          postgres    false    219            %           1259    47586654    Wallets    TABLE     G  CREATE TABLE public."Wallets" (
    id integer NOT NULL,
    amount numeric,
    transaction_type public."enum_Wallets_transaction_type",
    reason public."enum_Wallets_reason",
    remark text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "StoreUserId" integer
);
    DROP TABLE public."Wallets";
       public         heap    postgres    false    1180    1183            $           1259    47586653    Wallets_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Wallets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Wallets_id_seq";
       public          postgres    false    293            ~           0    0    Wallets_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Wallets_id_seq" OWNED BY public."Wallets".id;
          public          postgres    false    292                       2604    47585947    Activity_logs id    DEFAULT     x   ALTER TABLE ONLY public."Activity_logs" ALTER COLUMN id SET DEFAULT nextval('public."Activity_logs_id_seq"'::regclass);
 A   ALTER TABLE public."Activity_logs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212                       2604    47585956    Addresses id    DEFAULT     p   ALTER TABLE ONLY public."Addresses" ALTER COLUMN id SET DEFAULT nextval('public."Addresses_id_seq"'::regclass);
 =   ALTER TABLE public."Addresses" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214                       2604    47585979 
   Banners id    DEFAULT     l   ALTER TABLE ONLY public."Banners" ALTER COLUMN id SET DEFAULT nextval('public."Banners_id_seq"'::regclass);
 ;   ALTER TABLE public."Banners" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                       2604    47586006    Bulk_pricings id    DEFAULT     x   ALTER TABLE ONLY public."Bulk_pricings" ALTER COLUMN id SET DEFAULT nextval('public."Bulk_pricings_id_seq"'::regclass);
 A   ALTER TABLE public."Bulk_pricings" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222                       2604    47586023    Campaigns id    DEFAULT     p   ALTER TABLE ONLY public."Campaigns" ALTER COLUMN id SET DEFAULT nextval('public."Campaigns_id_seq"'::regclass);
 =   ALTER TABLE public."Campaigns" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                       2604    47586032    Carts id    DEFAULT     h   ALTER TABLE ONLY public."Carts" ALTER COLUMN id SET DEFAULT nextval('public."Carts_id_seq"'::regclass);
 9   ALTER TABLE public."Carts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226                       2604    47586045    Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                       2604    47586059    Collection_statics id    DEFAULT     �   ALTER TABLE ONLY public."Collection_statics" ALTER COLUMN id SET DEFAULT nextval('public."Collection_statics_id_seq"'::regclass);
 F   ALTER TABLE public."Collection_statics" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                       2604    47586052    Collections id    DEFAULT     t   ALTER TABLE ONLY public."Collections" ALTER COLUMN id SET DEFAULT nextval('public."Collections_id_seq"'::regclass);
 ?   ALTER TABLE public."Collections" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            x           2604    47586803 
   Coupons id    DEFAULT     l   ALTER TABLE ONLY public."Coupons" ALTER COLUMN id SET DEFAULT nextval('public."Coupons_id_seq"'::regclass);
 ;   ALTER TABLE public."Coupons" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    317    317                       2604    47586068    Custom_couriers id    DEFAULT     |   ALTER TABLE ONLY public."Custom_couriers" ALTER COLUMN id SET DEFAULT nextval('public."Custom_couriers_id_seq"'::regclass);
 C   ALTER TABLE public."Custom_couriers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            s           2604    47586778    Free_plans id    DEFAULT     r   ALTER TABLE ONLY public."Free_plans" ALTER COLUMN id SET DEFAULT nextval('public."Free_plans_id_seq"'::regclass);
 >   ALTER TABLE public."Free_plans" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314    315            h           2604    47586699    Global_brands id    DEFAULT     x   ALTER TABLE ONLY public."Global_brands" ALTER COLUMN id SET DEFAULT nextval('public."Global_brands_id_seq"'::regclass);
 A   ALTER TABLE public."Global_brands" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    298    299    299                       2604    47586077 	   Groups id    DEFAULT     j   ALTER TABLE ONLY public."Groups" ALTER COLUMN id SET DEFAULT nextval('public."Groups_id_seq"'::regclass);
 :   ALTER TABLE public."Groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    47586123    Leads id    DEFAULT     h   ALTER TABLE ONLY public."Leads" ALTER COLUMN id SET DEFAULT nextval('public."Leads_id_seq"'::regclass);
 9   ALTER TABLE public."Leads" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            q           2604    47586770    Marquees id    DEFAULT     n   ALTER TABLE ONLY public."Marquees" ALTER COLUMN id SET DEFAULT nextval('public."Marquees_id_seq"'::regclass);
 <   ALTER TABLE public."Marquees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    312    313    313            	           2604    47585987    Media id    DEFAULT     h   ALTER TABLE ONLY public."Media" ALTER COLUMN id SET DEFAULT nextval('public."Media_id_seq"'::regclass);
 9   ALTER TABLE public."Media" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            f           2604    47586681    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    295    295                       2604    47586225    Order_status_trackers id    DEFAULT     �   ALTER TABLE ONLY public."Order_status_trackers" ALTER COLUMN id SET DEFAULT nextval('public."Order_status_trackers_id_seq"'::regclass);
 I   ALTER TABLE public."Order_status_trackers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245                       2604    47586183    Order_variants id    DEFAULT     z   ALTER TABLE ONLY public."Order_variants" ALTER COLUMN id SET DEFAULT nextval('public."Order_variants_id_seq"'::regclass);
 B   ALTER TABLE public."Order_variants" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243                       2604    47586141 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241                       2604    47586232    Payment_logs id    DEFAULT     v   ALTER TABLE ONLY public."Payment_logs" ALTER COLUMN id SET DEFAULT nextval('public."Payment_logs_id_seq"'::regclass);
 @   ALTER TABLE public."Payment_logs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            g           2604    47586690    Payout_logs id    DEFAULT     t   ALTER TABLE ONLY public."Payout_logs" ALTER COLUMN id SET DEFAULT nextval('public."Payout_logs_id_seq"'::regclass);
 ?   ALTER TABLE public."Payout_logs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    297    297                       2604    47586253    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249                       2604    47586263    Privacy_policies id    DEFAULT     ~   ALTER TABLE ONLY public."Privacy_policies" ALTER COLUMN id SET DEFAULT nextval('public."Privacy_policies_id_seq"'::regclass);
 D   ALTER TABLE public."Privacy_policies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            &           2604    47586295    Product_metrics id    DEFAULT     |   ALTER TABLE ONLY public."Product_metrics" ALTER COLUMN id SET DEFAULT nextval('public."Product_metrics_id_seq"'::regclass);
 C   ALTER TABLE public."Product_metrics" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            i           2604    47586709    Product_policies id    DEFAULT     ~   ALTER TABLE ONLY public."Product_policies" ALTER COLUMN id SET DEFAULT nextval('public."Product_policies_id_seq"'::regclass);
 D   ALTER TABLE public."Product_policies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300    301            p           2604    47586761    Product_reviews id    DEFAULT     |   ALTER TABLE ONLY public."Product_reviews" ALTER COLUMN id SET DEFAULT nextval('public."Product_reviews_id_seq"'::regclass);
 C   ALTER TABLE public."Product_reviews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310    311                       2604    47586279    Products id    DEFAULT     n   ALTER TABLE ONLY public."Products" ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);
 <   ALTER TABLE public."Products" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            j           2604    47586718    Promotional_messages id    DEFAULT     �   ALTER TABLE ONLY public."Promotional_messages" ALTER COLUMN id SET DEFAULT nextval('public."Promotional_messages_id_seq"'::regclass);
 H   ALTER TABLE public."Promotional_messages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302    303            o           2604    47586751    Return_orders id    DEFAULT     x   ALTER TABLE ONLY public."Return_orders" ALTER COLUMN id SET DEFAULT nextval('public."Return_orders_id_seq"'::regclass);
 A   ALTER TABLE public."Return_orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308    309            ,           2604    47586312    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            /           2604    47586344    Ship_rocket_orderitems id    DEFAULT     �   ALTER TABLE ONLY public."Ship_rocket_orderitems" ALTER COLUMN id SET DEFAULT nextval('public."Ship_rocket_orderitems_id_seq"'::regclass);
 J   ALTER TABLE public."Ship_rocket_orderitems" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    265    265            -           2604    47586326    Ship_rocket_orders id    DEFAULT     �   ALTER TABLE ONLY public."Ship_rocket_orders" ALTER COLUMN id SET DEFAULT nextval('public."Ship_rocket_orders_id_seq"'::regclass);
 F   ALTER TABLE public."Ship_rocket_orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260    261            .           2604    47586335    Ship_rocket_returns id    DEFAULT     �   ALTER TABLE ONLY public."Ship_rocket_returns" ALTER COLUMN id SET DEFAULT nextval('public."Ship_rocket_returns_id_seq"'::regclass);
 G   ALTER TABLE public."Ship_rocket_returns" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    263    263            0           2604    47586399    Store_globals id    DEFAULT     x   ALTER TABLE ONLY public."Store_globals" ALTER COLUMN id SET DEFAULT nextval('public."Store_globals_id_seq"'::regclass);
 A   ALTER TABLE public."Store_globals" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    267    267            F           2604    47586430    Store_payment_logs id    DEFAULT     �   ALTER TABLE ONLY public."Store_payment_logs" ALTER COLUMN id SET DEFAULT nextval('public."Store_payment_logs_id_seq"'::regclass);
 F   ALTER TABLE public."Store_payment_logs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    269    269            G           2604    47586439    Store_plans id    DEFAULT     t   ALTER TABLE ONLY public."Store_plans" ALTER COLUMN id SET DEFAULT nextval('public."Store_plans_id_seq"'::regclass);
 ?   ALTER TABLE public."Store_plans" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    271    271            L           2604    47586452    Store_policies id    DEFAULT     z   ALTER TABLE ONLY public."Store_policies" ALTER COLUMN id SET DEFAULT nextval('public."Store_policies_id_seq"'::regclass);
 B   ALTER TABLE public."Store_policies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            M           2604    47586475    Store_server_subscriptions id    DEFAULT     �   ALTER TABLE ONLY public."Store_server_subscriptions" ALTER COLUMN id SET DEFAULT nextval('public."Store_server_subscriptions_id_seq"'::regclass);
 N   ALTER TABLE public."Store_server_subscriptions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274    275            O           2604    47586513    Store_settings id    DEFAULT     z   ALTER TABLE ONLY public."Store_settings" ALTER COLUMN id SET DEFAULT nextval('public."Store_settings_id_seq"'::regclass);
 B   ALTER TABLE public."Store_settings" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276    277            X           2604    47586561    Store_subscriptions id    DEFAULT     �   ALTER TABLE ONLY public."Store_subscriptions" ALTER COLUMN id SET DEFAULT nextval('public."Store_subscriptions_id_seq"'::regclass);
 G   ALTER TABLE public."Store_subscriptions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            W           2604    47586539    Store_support_tickets id    DEFAULT     �   ALTER TABLE ONLY public."Store_support_tickets" ALTER COLUMN id SET DEFAULT nextval('public."Store_support_tickets_id_seq"'::regclass);
 I   ALTER TABLE public."Store_support_tickets" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            [           2604    47586572    Store_users id    DEFAULT     t   ALTER TABLE ONLY public."Store_users" ALTER COLUMN id SET DEFAULT nextval('public."Store_users_id_seq"'::regclass);
 ?   ALTER TABLE public."Store_users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282    283            m           2604    47586735 
   Stories id    DEFAULT     l   ALTER TABLE ONLY public."Stories" ALTER COLUMN id SET DEFAULT nextval('public."Stories_id_seq"'::regclass);
 ;   ALTER TABLE public."Stories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    307    306    307            a           2604    47586590    Sub_categories id    DEFAULT     z   ALTER TABLE ONLY public."Sub_categories" ALTER COLUMN id SET DEFAULT nextval('public."Sub_categories_id_seq"'::regclass);
 B   ALTER TABLE public."Sub_categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284    285            b           2604    47586597    Tags id    DEFAULT     f   ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);
 8   ALTER TABLE public."Tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    287    287            l           2604    47586726    Testimonials id    DEFAULT     v   ALTER TABLE ONLY public."Testimonials" ALTER COLUMN id SET DEFAULT nextval('public."Testimonials_id_seq"'::regclass);
 @   ALTER TABLE public."Testimonials" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    305    305            c           2604    47586623    Transactions id    DEFAULT     v   ALTER TABLE ONLY public."Transactions" ALTER COLUMN id SET DEFAULT nextval('public."Transactions_id_seq"'::regclass);
 @   ALTER TABLE public."Transactions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288    289            d           2604    47586632    Tutorials id    DEFAULT     p   ALTER TABLE ONLY public."Tutorials" ALTER COLUMN id SET DEFAULT nextval('public."Tutorials_id_seq"'::regclass);
 =   ALTER TABLE public."Tutorials" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290    291            
           2604    47585996    Variants id    DEFAULT     n   ALTER TABLE ONLY public."Variants" ALTER COLUMN id SET DEFAULT nextval('public."Variants_id_seq"'::regclass);
 <   ALTER TABLE public."Variants" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            e           2604    47586657 
   Wallets id    DEFAULT     l   ALTER TABLE ONLY public."Wallets" ALTER COLUMN id SET DEFAULT nextval('public."Wallets_id_seq"'::regclass);
 ;   ALTER TABLE public."Wallets" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    293    293            �          0    47585944    Activity_logs 
   TABLE DATA           j   COPY public."Activity_logs" (id, description, event, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    212   ��      �          0    47585953 	   Addresses 
   TABLE DATA           �   COPY public."Addresses" (id, name, "houseNumber", "addressLine1", "countryCode", phone, pincode, city, state, country, "addressLine2", area, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    214   =�      �          0    47585976    Banners 
   TABLE DATA           �   COPY public."Banners" (id, action, type, data, "createdAt", "updatedAt", "MobileThumbnailId", "DesktopThumbnailId") FROM stdin;
    public          postgres    false    216   �      �          0    47586003    Bulk_pricings 
   TABLE DATA           y   COPY public."Bulk_pricings" (id, "from", "to", price, "premiumPrice", "createdAt", "updatedAt", "VariantId") FROM stdin;
    public          postgres    false    222   ��      �          0    47586020 	   Campaigns 
   TABLE DATA           �   COPY public."Campaigns" (id, notification_title, notification_body, notification_image, schedule_time, type, web_notification, app_notification, data, image_url, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   �      �          0    47586036    CartVariants 
   TABLE DATA           c   COPY public."CartVariants" (quantity, "createdAt", "updatedAt", "CartId", "VariantId") FROM stdin;
    public          postgres    false    227   "�      �          0    47586029    Carts 
   TABLE DATA           \   COPY public."Carts" (id, "totalPrice", "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    226   ?�      �          0    47586042 
   Categories 
   TABLE DATA           Y   COPY public."Categories" (id, name, "createdAt", "updatedAt", "ThumbnailId") FROM stdin;
    public          postgres    false    229   \�      =          0    47586809    CollectionProduct 
   TABLE DATA           d   COPY public."CollectionProduct" ("createdAt", "updatedAt", "CollectionId", "ProductId") FROM stdin;
    public          postgres    false    318   ��      �          0    47586056    Collection_statics 
   TABLE DATA           W   COPY public."Collection_statics" (id, name, tag, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   h�      �          0    47586049    Collections 
   TABLE DATA           g   COPY public."Collections" (id, name, "createdAt", "updatedAt", "ThumbnailId", "ProductId") FROM stdin;
    public          postgres    false    231   ��      C          0    47586839    CouponProduct 
   TABLE DATA           \   COPY public."CouponProduct" ("createdAt", "updatedAt", "CouponId", "ProductId") FROM stdin;
    public          postgres    false    324   �      <          0    47586800    Coupons 
   TABLE DATA           �   COPY public."Coupons" (id, coupon_code, message, discount_value, valid_from, valid_to, active, coupon_type, discount_type, "createdAt", "updatedAt", "CollectionId", "MediaId", "ProductId") FROM stdin;
    public          postgres    false    317   )�      A          0    47586829    Courier_media_link 
   TABLE DATA           f   COPY public."Courier_media_link" ("createdAt", "updatedAt", "MediaId", "CustomCourierId") FROM stdin;
    public          postgres    false    322   F�      �          0    47586065    Custom_couriers 
   TABLE DATA           �   COPY public."Custom_couriers" (id, "trackingId", "courierName", "courierEmail", phone, "createdAt", "updatedAt", "OrderVariantId") FROM stdin;
    public          postgres    false    235   c�      :          0    47586775 
   Free_plans 
   TABLE DATA           �   COPY public."Free_plans" (id, name, description, "maxUsers", "maxProducts", "premiumPricing", "codAllowed", "prepaidAllowed", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    315   ��      *          0    47586696    Global_brands 
   TABLE DATA           �   COPY public."Global_brands" (id, name, tagline, whatsapp_number, calling_number, email, about_us, address, instagram, facebook, telegram, youtube, "createdAt", "updatedAt", "LogoIdDark", "LogoIdLight", "FavIconId") FROM stdin;
    public          postgres    false    299   ��      �          0    47586074    Groups 
   TABLE DATA           K   COPY public."Groups" (id, name, url, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   ��      �          0    47586120    Leads 
   TABLE DATA           �   COPY public."Leads" (id, name, phone, country_code, status, source, type, consumer_note, staff_note, quantity, "createdAt", "updatedAt", "ProductId", "AssignedTo", "StoreUserId") FROM stdin;
    public          postgres    false    239   ��      8          0    47586767    Marquees 
   TABLE DATA           [   COPY public."Marquees" (id, name, active, "createdAt", "updatedAt", "ImageId") FROM stdin;
    public          postgres    false    313   p�      �          0    47585984    Media 
   TABLE DATA           n   COPY public."Media" (id, name, path, url, width, height, size, formats, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   ,�      &          0    47586678    Notifications 
   TABLE DATA           q   COPY public."Notifications" (id, title, desctiption, type, "isRead", data, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    295   [�      �          0    47586222    Order_status_trackers 
   TABLE DATA           i   COPY public."Order_status_trackers" (id, status, "createdAt", "updatedAt", "OrderVariantId") FROM stdin;
    public          postgres    false    245   x�      �          0    47586180    Order_variants 
   TABLE DATA           �   COPY public."Order_variants" (id, quantity, price, selling_price, status, is_cod_paid, note, "createdAt", "updatedAt", "VariantId", "OrderId", "ShipRocketOrderItemId", "CustomCourierId") FROM stdin;
    public          postgres    false    243   ��      �          0    47586138    Orders 
   TABLE DATA           �   COPY public."Orders" (id, slug, payment_order_id, payment_id, payment_signature, price, payment_mode, is_paid, consumer_name, consumer_email, consumer_phone, is_reseller_order, "createdAt", "updatedAt", "AddressId", "StoreUserId") FROM stdin;
    public          postgres    false    241   ��      �          0    47586229    Payment_logs 
   TABLE DATA           �   COPY public."Payment_logs" (id, order_id, payment_id, amount, amount_refunded, currency, status, method, captured, card_id, card, last4, network, bank, wallet, vpa, email, contact, notes, client, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    247   ��      (          0    47586687    Payout_logs 
   TABLE DATA           0  COPY public."Payout_logs" (id, payout_id, fund_account_id, account_type, amount, currency, mode, purpose, vpa, name, contact, contact_id, status, reference_id, fund_account_contact_id, fund_bank_account_ifsc, fund_bank_account_number, fund_bank_name, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    297   ��      �          0    47586250    Permissions 
   TABLE DATA           e   COPY public."Permissions" (id, api, endpoint, method, handler, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   ��      �          0    47586260    Privacy_policies 
   TABLE DATA           c   COPY public."Privacy_policies" (id, name, year, descrpition, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   �      �          0    47586303    ProductTags 
   TABLE DATA           W   COPY public."ProductTags" ("createdAt", "updatedAt", "TagId", "ProductId") FROM stdin;
    public          postgres    false    256   �      ?          0    47586819    Product_gallery 
   TABLE DATA           ]   COPY public."Product_gallery" ("createdAt", "updatedAt", "ProductId", "MediaId") FROM stdin;
    public          postgres    false    320   �      �          0    47586292    Product_metrics 
   TABLE DATA           �   COPY public."Product_metrics" (id, view_count, ordered_count, return_count, shares_count, revenue_generated, "createdAt", "updatedAt", "ProductId") FROM stdin;
    public          postgres    false    255   f      ,          0    47586706    Product_policies 
   TABLE DATA           ^   COPY public."Product_policies" (id, title, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    301   N      >          0    47586814    Product_review_gallery 
   TABLE DATA           k   COPY public."Product_review_gallery" ("createdAt", "updatedAt", "ProductReviewId", "MediumId") FROM stdin;
    public          postgres    false    319   k      6          0    47586758    Product_reviews 
   TABLE DATA           �   COPY public."Product_reviews" (id, name, title, rating, review, "createdAt", "updatedAt", "ProductId", "StoreUserId", "AvatarId") FROM stdin;
    public          postgres    false    311   �      �          0    47586276    Products 
   TABLE DATA           '  COPY public."Products" (id, name, description, is_active, cod_enabled, product_return, return_days, shipping_value, enquiry_enabled, show_price, shipping_value_type, yt_video_link, rating, "createdAt", "updatedAt", "CollectionStaticId", "CategoryId", "SubCategoryId", "ThumbnailId") FROM stdin;
    public          postgres    false    253   �      .          0    47586715    Promotional_messages 
   TABLE DATA           `   COPY public."Promotional_messages" (id, title, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    303   2      4          0    47586748    Return_orders 
   TABLE DATA           �   COPY public."Return_orders" (id, note, status, "createdAt", "updatedAt", "ImageId", "StoreUserId", "OrderVariantId") FROM stdin;
    public          postgres    false    309   j2                0    47586317    Role_permissions 
   TABLE DATA           `   COPY public."Role_permissions" ("createdAt", "updatedAt", "RoleId", "PermissionId") FROM stdin;
    public          postgres    false    259   �2                0    47586309    Roles 
   TABLE DATA           R   COPY public."Roles" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    258   �6                0    47586341    Ship_rocket_orderitems 
   TABLE DATA           �   COPY public."Ship_rocket_orderitems" (id, name, sku, units, selling_price, discount, tax, hsn, "createdAt", "updatedAt", "ShipRocketOrderId", "OrderVariantId", "ShipRocketReturnId") FROM stdin;
    public          postgres    false    265   A7                0    47586323    Ship_rocket_orders 
   TABLE DATA           �  COPY public."Ship_rocket_orders" (id, order_id, order_date, pickup_location, billing_customer_name, billing_city, billing_pincode, billing_state, billing_country, billing_email, billing_phone, payment_method, shipping_charges, giftwrap_charges, transaction_charges, total_discount, sub_total, length, breadth, height, weight, billing_address, shiprocket_order_id, shipment_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    261   ^7                0    47586332    Ship_rocket_returns 
   TABLE DATA           n   COPY public."Ship_rocket_returns" (id, length, breadth, height, weight, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   {7      
          0    47586396    Store_globals 
   TABLE DATA           �  COPY public."Store_globals" (id, subscription_price, cod_enabled, cod_prepaid, cod_prepaid_type, prepaid_discount, prepaid_discount_type, shipping_value, shipping_value_type, razorpay_key, razorpay_secret, withdraw_limit, "razorpayX_account_number", shiprocket_username, shiprocket_password, is_shiprocket_enabled, shiprocket_token, selected_payment_gateway, selected_shipment, bulk_pricing, cashfree_client_secret, cashfree_client_id, phonepe_merchant_id, phonepe_merchant_key, phonepe_key_index, firebase_auth, firebase_topic, user_verification_method, msg_balance, msg91_template_id, msg91_api_key, return_request, return_request_period, store_link, personal_id, notification_enabled, interakt_api_key, otp_template_id, campaign_template_id, order_template_id, product_template_id, collection_template_id, subscription_template_id, payout_template_id, facebook_pixel, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    267   �7                0    47586427    Store_payment_logs 
   TABLE DATA           �   COPY public."Store_payment_logs" (id, order_id, payment_id, amount, amount_refunded, currency, status, method, captured, card_id, card, last4, network, bank, wallet, vpa, email, contact, notes, client, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    269   �8                0    47586436    Store_plans 
   TABLE DATA           �   COPY public."Store_plans" (id, name, validity, price, description, premium_pricing, cod_allowed, prepaid_allowed, is_active, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    271   �8                0    47586449    Store_policies 
   TABLE DATA           �   COPY public."Store_policies" (id, about_us, terms_and_conditions, privacy_policy, refund_and_cancellation, ship_and_delivery, contact_us, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    273   �8                0    47586472    Store_server_subscriptions 
   TABLE DATA           �   COPY public."Store_server_subscriptions" (id, order_id, amount, payment_id, "purchaseType", valid_from, valid_to, is_paid, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    275   �@                0    47586510    Store_settings 
   TABLE DATA           �  COPY public."Store_settings" (id, store_type, primary_color, nav_bg_color, nav_text_color, secondary_color, bg_color, text_color, button_color, logo_size, is_app_enabled, is_maintenance_mode, is_store_active, store_inactive_message, store_maintenance_message, is_pricing_visible, is_cart_enabled, is_wallet_enabled, product_card_style, category_card_style, product_list_span_mobile, product_list_span_desktop, show_marquee, show_collection, show_banner, show_stories, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    277   AA                0    47586558    Store_subscriptions 
   TABLE DATA           �   COPY public."Store_subscriptions" (id, amount, order_id, payment_id, "purchaseType", valid_from, valid_to, is_paid, status, "createdAt", "updatedAt", "StoreUserId", "PlanId") FROM stdin;
    public          postgres    false    281   �A                0    47586536    Store_support_tickets 
   TABLE DATA           z   COPY public."Store_support_tickets" (id, title, description, status, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    279   �A                0    47586569    Store_users 
   TABLE DATA             COPY public."Store_users" (id, name, email, password, confirmed, phone, country_code, wallet_balance, password_reset_token, "FCM_app_token", "FCM_web_token", "isPremium", otp, otp_expiration, "createdAt", "updatedAt", "CartId", "RoleId", "AvatarId") FROM stdin;
    public          postgres    false    283   
B      2          0    47586732    Stories 
   TABLE DATA           Z   COPY public."Stories" (id, "createdAt", "updatedAt", "VideoId", "ThumbialId") FROM stdin;
    public          postgres    false    307   >C      B          0    47586834    StoryProduct 
   TABLE DATA           Z   COPY public."StoryProduct" ("createdAt", "updatedAt", "StoryId", "ProductId") FROM stdin;
    public          postgres    false    323   [C                0    47586587    Sub_categories 
   TABLE DATA           k   COPY public."Sub_categories" (id, name, "createdAt", "updatedAt", "CategoryId", "ThumbnailId") FROM stdin;
    public          postgres    false    285   �C                0    47586594    Tags 
   TABLE DATA           D   COPY public."Tags" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    287   �C      0          0    47586723    Testimonials 
   TABLE DATA           �   COPY public."Testimonials" (id, name, content, rating, "createdAt", "updatedAt", "StoreUserId", "VideoId", "ThumbnailId") FROM stdin;
    public          postgres    false    305   �C                 0    47586620    Transactions 
   TABLE DATA           �   COPY public."Transactions" (id, purpose, txn_type, txn_id, remark, mode, amount, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    289   |I      "          0    47586629 	   Tutorials 
   TABLE DATA           p   COPY public."Tutorials" (id, name, video_url, description, "createdAt", "updatedAt", "ThumbnailId") FROM stdin;
    public          postgres    false    291   �I      @          0    47586824    Variant_gallery 
   TABLE DATA           ]   COPY public."Variant_gallery" ("createdAt", "updatedAt", "VariantId", "MediaId") FROM stdin;
    public          postgres    false    321   �I      �          0    47585993    Variants 
   TABLE DATA           �   COPY public."Variants" (id, name, price, premium_price, strike_price, quantity, is_active, "createdAt", "updatedAt", "ProductId", "ThumbnailId") FROM stdin;
    public          postgres    false    220   �I      $          0    47586654    Wallets 
   TABLE DATA           z   COPY public."Wallets" (id, amount, transaction_type, reason, remark, "createdAt", "updatedAt", "StoreUserId") FROM stdin;
    public          postgres    false    293   M                 0    0    Activity_logs_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Activity_logs_id_seq"', 56, true);
          public          postgres    false    211            �           0    0    Addresses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Addresses_id_seq"', 2, true);
          public          postgres    false    213            �           0    0    Banners_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Banners_id_seq"', 19, true);
          public          postgres    false    215            �           0    0    Bulk_pricings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Bulk_pricings_id_seq"', 1, false);
          public          postgres    false    221            �           0    0    Campaigns_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Campaigns_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    Carts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Carts_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    Categories_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Categories_id_seq"', 30, true);
          public          postgres    false    228            �           0    0    Collection_statics_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Collection_statics_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    Collections_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Collections_id_seq"', 5, true);
          public          postgres    false    230            �           0    0    Coupons_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Coupons_id_seq"', 1, false);
          public          postgres    false    316            �           0    0    Custom_couriers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Custom_couriers_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Free_plans_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Free_plans_id_seq"', 1, false);
          public          postgres    false    314            �           0    0    Global_brands_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Global_brands_id_seq"', 1, true);
          public          postgres    false    298            �           0    0    Groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Groups_id_seq"', 1, false);
          public          postgres    false    236            �           0    0    Leads_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Leads_id_seq"', 2, true);
          public          postgres    false    238            �           0    0    Marquees_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Marquees_id_seq"', 21, true);
          public          postgres    false    312            �           0    0    Media_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Media_id_seq"', 289, true);
          public          postgres    false    217            �           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 1, false);
          public          postgres    false    294            �           0    0    Order_status_trackers_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Order_status_trackers_id_seq"', 4, true);
          public          postgres    false    244            �           0    0    Order_variants_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Order_variants_id_seq"', 5, true);
          public          postgres    false    242            �           0    0    Orders_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Orders_id_seq"', 5, true);
          public          postgres    false    240            �           0    0    Payment_logs_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Payment_logs_id_seq"', 1, false);
          public          postgres    false    246            �           0    0    Payout_logs_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Payout_logs_id_seq"', 1, false);
          public          postgres    false    296            �           0    0    Permissions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Permissions_id_seq"', 264960, true);
          public          postgres    false    248            �           0    0    Privacy_policies_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Privacy_policies_id_seq"', 1, false);
          public          postgres    false    250            �           0    0    Product_metrics_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Product_metrics_id_seq"', 25, true);
          public          postgres    false    254            �           0    0    Product_policies_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Product_policies_id_seq"', 1, false);
          public          postgres    false    300            �           0    0    Product_reviews_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Product_reviews_id_seq"', 1, true);
          public          postgres    false    310            �           0    0    Products_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Products_id_seq"', 25, true);
          public          postgres    false    252            �           0    0    Promotional_messages_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Promotional_messages_id_seq"', 1, true);
          public          postgres    false    302            �           0    0    Return_orders_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Return_orders_id_seq"', 1, false);
          public          postgres    false    308            �           0    0    Roles_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Roles_id_seq"', 4, true);
          public          postgres    false    257            �           0    0    Ship_rocket_orderitems_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Ship_rocket_orderitems_id_seq"', 1, false);
          public          postgres    false    264            �           0    0    Ship_rocket_orders_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Ship_rocket_orders_id_seq"', 1, false);
          public          postgres    false    260            �           0    0    Ship_rocket_returns_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Ship_rocket_returns_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    Store_globals_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Store_globals_id_seq"', 1, true);
          public          postgres    false    266            �           0    0    Store_payment_logs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Store_payment_logs_id_seq"', 1, false);
          public          postgres    false    268            �           0    0    Store_plans_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Store_plans_id_seq"', 1, false);
          public          postgres    false    270            �           0    0    Store_policies_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Store_policies_id_seq"', 1, true);
          public          postgres    false    272            �           0    0 !   Store_server_subscriptions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Store_server_subscriptions_id_seq"', 1, true);
          public          postgres    false    274            �           0    0    Store_settings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Store_settings_id_seq"', 1, true);
          public          postgres    false    276            �           0    0    Store_subscriptions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Store_subscriptions_id_seq"', 1, false);
          public          postgres    false    280            �           0    0    Store_support_tickets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Store_support_tickets_id_seq"', 1, false);
          public          postgres    false    278            �           0    0    Store_users_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Store_users_id_seq"', 4, true);
          public          postgres    false    282            �           0    0    Stories_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Stories_id_seq"', 4, true);
          public          postgres    false    306            �           0    0    Sub_categories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Sub_categories_id_seq"', 1, false);
          public          postgres    false    284            �           0    0    Tags_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Tags_id_seq"', 1, false);
          public          postgres    false    286            �           0    0    Testimonials_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Testimonials_id_seq"', 12, true);
          public          postgres    false    304            �           0    0    Transactions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Transactions_id_seq"', 1, false);
          public          postgres    false    288            �           0    0    Tutorials_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Tutorials_id_seq"', 1, false);
          public          postgres    false    290            �           0    0    Variants_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Variants_id_seq"', 48, true);
          public          postgres    false    219            �           0    0    Wallets_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Wallets_id_seq"', 1, false);
          public          postgres    false    292            z           2606    47585951     Activity_logs Activity_logs_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Activity_logs"
    ADD CONSTRAINT "Activity_logs_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Activity_logs" DROP CONSTRAINT "Activity_logs_pkey";
       public            postgres    false    212            |           2606    47585961    Addresses Addresses_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_pkey";
       public            postgres    false    214            ~           2606    47585982    Banners Banners_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Banners"
    ADD CONSTRAINT "Banners_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Banners" DROP CONSTRAINT "Banners_pkey";
       public            postgres    false    216            �           2606    47586010     Bulk_pricings Bulk_pricings_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Bulk_pricings"
    ADD CONSTRAINT "Bulk_pricings_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Bulk_pricings" DROP CONSTRAINT "Bulk_pricings_pkey";
       public            postgres    false    222            �           2606    47586027    Campaigns Campaigns_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_pkey";
       public            postgres    false    224            �           2606    47586040    CartVariants CartVariants_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."CartVariants"
    ADD CONSTRAINT "CartVariants_pkey" PRIMARY KEY ("CartId", "VariantId");
 L   ALTER TABLE ONLY public."CartVariants" DROP CONSTRAINT "CartVariants_pkey";
       public            postgres    false    227    227            �           2606    47586035    Carts Carts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Carts"
    ADD CONSTRAINT "Carts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Carts" DROP CONSTRAINT "Carts_pkey";
       public            postgres    false    226            �           2606    47586047    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    229            �           2606    47586813 (   CollectionProduct CollectionProduct_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."CollectionProduct"
    ADD CONSTRAINT "CollectionProduct_pkey" PRIMARY KEY ("CollectionId", "ProductId");
 V   ALTER TABLE ONLY public."CollectionProduct" DROP CONSTRAINT "CollectionProduct_pkey";
       public            postgres    false    318    318            �           2606    47586063 *   Collection_statics Collection_statics_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Collection_statics"
    ADD CONSTRAINT "Collection_statics_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."Collection_statics" DROP CONSTRAINT "Collection_statics_pkey";
       public            postgres    false    233            �           2606    47586054    Collections Collections_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Collections"
    ADD CONSTRAINT "Collections_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Collections" DROP CONSTRAINT "Collections_pkey";
       public            postgres    false    231            
           2606    47586843     CouponProduct CouponProduct_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."CouponProduct"
    ADD CONSTRAINT "CouponProduct_pkey" PRIMARY KEY ("CouponId", "ProductId");
 N   ALTER TABLE ONLY public."CouponProduct" DROP CONSTRAINT "CouponProduct_pkey";
       public            postgres    false    324    324            �           2606    47586808    Coupons Coupons_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Coupons"
    ADD CONSTRAINT "Coupons_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Coupons" DROP CONSTRAINT "Coupons_pkey";
       public            postgres    false    317                       2606    47586833 *   Courier_media_link Courier_media_link_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Courier_media_link"
    ADD CONSTRAINT "Courier_media_link_pkey" PRIMARY KEY ("MediaId", "CustomCourierId");
 X   ALTER TABLE ONLY public."Courier_media_link" DROP CONSTRAINT "Courier_media_link_pkey";
       public            postgres    false    322    322            �           2606    47586072 $   Custom_couriers Custom_couriers_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Custom_couriers"
    ADD CONSTRAINT "Custom_couriers_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Custom_couriers" DROP CONSTRAINT "Custom_couriers_pkey";
       public            postgres    false    235            �           2606    47586785    Free_plans Free_plans_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Free_plans"
    ADD CONSTRAINT "Free_plans_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Free_plans" DROP CONSTRAINT "Free_plans_pkey";
       public            postgres    false    315            �           2606    47586703     Global_brands Global_brands_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Global_brands"
    ADD CONSTRAINT "Global_brands_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Global_brands" DROP CONSTRAINT "Global_brands_pkey";
       public            postgres    false    299            �           2606    47586081    Groups Groups_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public            postgres    false    237            �           2606    47586129    Leads Leads_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Leads"
    ADD CONSTRAINT "Leads_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Leads" DROP CONSTRAINT "Leads_pkey";
       public            postgres    false    239            �           2606    47586773    Marquees Marquees_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Marquees"
    ADD CONSTRAINT "Marquees_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Marquees" DROP CONSTRAINT "Marquees_pkey";
       public            postgres    false    313            �           2606    47585991    Media Media_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Media"
    ADD CONSTRAINT "Media_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Media" DROP CONSTRAINT "Media_pkey";
       public            postgres    false    218            �           2606    47586685     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    295            �           2606    47586227 0   Order_status_trackers Order_status_trackers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Order_status_trackers"
    ADD CONSTRAINT "Order_status_trackers_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Order_status_trackers" DROP CONSTRAINT "Order_status_trackers_pkey";
       public            postgres    false    245            �           2606    47586187 "   Order_variants Order_variants_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Order_variants"
    ADD CONSTRAINT "Order_variants_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Order_variants" DROP CONSTRAINT "Order_variants_pkey";
       public            postgres    false    243            �           2606    47586145    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    241            �           2606    47586236    Payment_logs Payment_logs_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Payment_logs"
    ADD CONSTRAINT "Payment_logs_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Payment_logs" DROP CONSTRAINT "Payment_logs_pkey";
       public            postgres    false    247            �           2606    47586694    Payout_logs Payout_logs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Payout_logs"
    ADD CONSTRAINT "Payout_logs_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Payout_logs" DROP CONSTRAINT "Payout_logs_pkey";
       public            postgres    false    297            �           2606    47586257    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    249            �           2606    47586267 &   Privacy_policies Privacy_policies_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Privacy_policies"
    ADD CONSTRAINT "Privacy_policies_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Privacy_policies" DROP CONSTRAINT "Privacy_policies_pkey";
       public            postgres    false    251            �           2606    47586307    ProductTags ProductTags_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."ProductTags"
    ADD CONSTRAINT "ProductTags_pkey" PRIMARY KEY ("TagId", "ProductId");
 J   ALTER TABLE ONLY public."ProductTags" DROP CONSTRAINT "ProductTags_pkey";
       public            postgres    false    256    256                       2606    47586823 $   Product_gallery Product_gallery_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Product_gallery"
    ADD CONSTRAINT "Product_gallery_pkey" PRIMARY KEY ("ProductId", "MediaId");
 R   ALTER TABLE ONLY public."Product_gallery" DROP CONSTRAINT "Product_gallery_pkey";
       public            postgres    false    320    320            �           2606    47586302 $   Product_metrics Product_metrics_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Product_metrics"
    ADD CONSTRAINT "Product_metrics_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Product_metrics" DROP CONSTRAINT "Product_metrics_pkey";
       public            postgres    false    255            �           2606    47586713 &   Product_policies Product_policies_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Product_policies"
    ADD CONSTRAINT "Product_policies_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Product_policies" DROP CONSTRAINT "Product_policies_pkey";
       public            postgres    false    301                        2606    47586818 2   Product_review_gallery Product_review_gallery_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Product_review_gallery"
    ADD CONSTRAINT "Product_review_gallery_pkey" PRIMARY KEY ("ProductReviewId", "MediumId");
 `   ALTER TABLE ONLY public."Product_review_gallery" DROP CONSTRAINT "Product_review_gallery_pkey";
       public            postgres    false    319    319            �           2606    47586765 $   Product_reviews Product_reviews_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Product_reviews"
    ADD CONSTRAINT "Product_reviews_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Product_reviews" DROP CONSTRAINT "Product_reviews_pkey";
       public            postgres    false    311            �           2606    47586290    Products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    253            �           2606    47586721 .   Promotional_messages Promotional_messages_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Promotional_messages"
    ADD CONSTRAINT "Promotional_messages_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Promotional_messages" DROP CONSTRAINT "Promotional_messages_pkey";
       public            postgres    false    303            �           2606    47586756     Return_orders Return_orders_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Return_orders"
    ADD CONSTRAINT "Return_orders_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Return_orders" DROP CONSTRAINT "Return_orders_pkey";
       public            postgres    false    309            �           2606    47586321 &   Role_permissions Role_permissions_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Role_permissions"
    ADD CONSTRAINT "Role_permissions_pkey" PRIMARY KEY ("RoleId", "PermissionId");
 T   ALTER TABLE ONLY public."Role_permissions" DROP CONSTRAINT "Role_permissions_pkey";
       public            postgres    false    259    259            �           2606    47586316    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    258            �           2606    47586348 2   Ship_rocket_orderitems Ship_rocket_orderitems_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Ship_rocket_orderitems"
    ADD CONSTRAINT "Ship_rocket_orderitems_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Ship_rocket_orderitems" DROP CONSTRAINT "Ship_rocket_orderitems_pkey";
       public            postgres    false    265            �           2606    47586330 *   Ship_rocket_orders Ship_rocket_orders_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Ship_rocket_orders"
    ADD CONSTRAINT "Ship_rocket_orders_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."Ship_rocket_orders" DROP CONSTRAINT "Ship_rocket_orders_pkey";
       public            postgres    false    261            �           2606    47586339 ,   Ship_rocket_returns Ship_rocket_returns_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Ship_rocket_returns"
    ADD CONSTRAINT "Ship_rocket_returns_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Ship_rocket_returns" DROP CONSTRAINT "Ship_rocket_returns_pkey";
       public            postgres    false    263            �           2606    47586424     Store_globals Store_globals_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_globals"
    ADD CONSTRAINT "Store_globals_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Store_globals" DROP CONSTRAINT "Store_globals_pkey";
       public            postgres    false    267            �           2606    47586434 *   Store_payment_logs Store_payment_logs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Store_payment_logs"
    ADD CONSTRAINT "Store_payment_logs_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."Store_payment_logs" DROP CONSTRAINT "Store_payment_logs_pkey";
       public            postgres    false    269            �           2606    47586447    Store_plans Store_plans_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Store_plans"
    ADD CONSTRAINT "Store_plans_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Store_plans" DROP CONSTRAINT "Store_plans_pkey";
       public            postgres    false    271            �           2606    47586456 "   Store_policies Store_policies_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Store_policies"
    ADD CONSTRAINT "Store_policies_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Store_policies" DROP CONSTRAINT "Store_policies_pkey";
       public            postgres    false    273            �           2606    47586480 :   Store_server_subscriptions Store_server_subscriptions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Store_server_subscriptions"
    ADD CONSTRAINT "Store_server_subscriptions_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Store_server_subscriptions" DROP CONSTRAINT "Store_server_subscriptions_pkey";
       public            postgres    false    275            �           2606    47586524 "   Store_settings Store_settings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Store_settings"
    ADD CONSTRAINT "Store_settings_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Store_settings" DROP CONSTRAINT "Store_settings_pkey";
       public            postgres    false    277            �           2606    47586567 ,   Store_subscriptions Store_subscriptions_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Store_subscriptions"
    ADD CONSTRAINT "Store_subscriptions_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Store_subscriptions" DROP CONSTRAINT "Store_subscriptions_pkey";
       public            postgres    false    281            �           2606    47586543 0   Store_support_tickets Store_support_tickets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Store_support_tickets"
    ADD CONSTRAINT "Store_support_tickets_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Store_support_tickets" DROP CONSTRAINT "Store_support_tickets_pkey";
       public            postgres    false    279            �           2606    47996637 !   Store_users Store_users_email_key 
   CONSTRAINT     a   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_email_key" UNIQUE (email);
 O   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_email_key";
       public            postgres    false    283            �           2606    47996639 "   Store_users Store_users_email_key1 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_email_key1" UNIQUE (email);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_email_key1";
       public            postgres    false    283            �           2606    47996641 "   Store_users Store_users_email_key2 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_email_key2" UNIQUE (email);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_email_key2";
       public            postgres    false    283            �           2606    47996643 "   Store_users Store_users_email_key3 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_email_key3" UNIQUE (email);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_email_key3";
       public            postgres    false    283            �           2606    47996649 !   Store_users Store_users_phone_key 
   CONSTRAINT     a   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_phone_key" UNIQUE (phone);
 O   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_phone_key";
       public            postgres    false    283            �           2606    47996651 "   Store_users Store_users_phone_key1 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_phone_key1" UNIQUE (phone);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_phone_key1";
       public            postgres    false    283            �           2606    47996653 "   Store_users Store_users_phone_key2 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_phone_key2" UNIQUE (phone);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_phone_key2";
       public            postgres    false    283            �           2606    47996655 "   Store_users Store_users_phone_key3 
   CONSTRAINT     b   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_phone_key3" UNIQUE (phone);
 P   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_phone_key3";
       public            postgres    false    283            �           2606    47586581    Store_users Store_users_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_pkey";
       public            postgres    false    283            �           2606    47586737    Stories Stories_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Stories"
    ADD CONSTRAINT "Stories_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Stories" DROP CONSTRAINT "Stories_pkey";
       public            postgres    false    307                       2606    47586838    StoryProduct StoryProduct_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."StoryProduct"
    ADD CONSTRAINT "StoryProduct_pkey" PRIMARY KEY ("StoryId", "ProductId");
 L   ALTER TABLE ONLY public."StoryProduct" DROP CONSTRAINT "StoryProduct_pkey";
       public            postgres    false    323    323            �           2606    47586592 "   Sub_categories Sub_categories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Sub_categories"
    ADD CONSTRAINT "Sub_categories_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Sub_categories" DROP CONSTRAINT "Sub_categories_pkey";
       public            postgres    false    285            �           2606    47586599    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public            postgres    false    287            �           2606    47586730    Testimonials Testimonials_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Testimonials"
    ADD CONSTRAINT "Testimonials_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Testimonials" DROP CONSTRAINT "Testimonials_pkey";
       public            postgres    false    305            �           2606    47586627    Transactions Transactions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "Transactions_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Transactions" DROP CONSTRAINT "Transactions_pkey";
       public            postgres    false    289            �           2606    47586636    Tutorials Tutorials_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Tutorials"
    ADD CONSTRAINT "Tutorials_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Tutorials" DROP CONSTRAINT "Tutorials_pkey";
       public            postgres    false    291                       2606    47586828 $   Variant_gallery Variant_gallery_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Variant_gallery"
    ADD CONSTRAINT "Variant_gallery_pkey" PRIMARY KEY ("VariantId", "MediaId");
 R   ALTER TABLE ONLY public."Variant_gallery" DROP CONSTRAINT "Variant_gallery_pkey";
       public            postgres    false    321    321            �           2606    47586001    Variants Variants_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Variants"
    ADD CONSTRAINT "Variants_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Variants" DROP CONSTRAINT "Variants_pkey";
       public            postgres    false    220            �           2606    47586661    Wallets Wallets_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Wallets"
    ADD CONSTRAINT "Wallets_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Wallets" DROP CONSTRAINT "Wallets_pkey";
       public            postgres    false    293            �           1259    47586786    free_plans_id    INDEX     K   CREATE UNIQUE INDEX free_plans_id ON public."Free_plans" USING btree (id);
 !   DROP INDEX public.free_plans_id;
       public            postgres    false    315            �           1259    47586704    global_brands_id    INDEX     Q   CREATE UNIQUE INDEX global_brands_id ON public."Global_brands" USING btree (id);
 $   DROP INDEX public.global_brands_id;
       public            postgres    false    299            �           1259    47996482 '   permissions_api_method_endpoint_handler    INDEX     �   CREATE UNIQUE INDEX permissions_api_method_endpoint_handler ON public."Permissions" USING btree (api, method, endpoint, handler);
 ;   DROP INDEX public.permissions_api_method_endpoint_handler;
       public            postgres    false    249    249    249    249            �           1259    47586425    store_globals_id    INDEX     Q   CREATE UNIQUE INDEX store_globals_id ON public."Store_globals" USING btree (id);
 $   DROP INDEX public.store_globals_id;
       public            postgres    false    267            �           1259    47586457    store_policies_id    INDEX     S   CREATE UNIQUE INDEX store_policies_id ON public."Store_policies" USING btree (id);
 %   DROP INDEX public.store_policies_id;
       public            postgres    false    273            �           1259    47586525    store_settings_id    INDEX     S   CREATE UNIQUE INDEX store_settings_id ON public."Store_settings" USING btree (id);
 %   DROP INDEX public.store_settings_id;
       public            postgres    false    277                       2606    47996357 ,   Activity_logs Activity_logs_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Activity_logs"
    ADD CONSTRAINT "Activity_logs_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Activity_logs" DROP CONSTRAINT "Activity_logs_StoreUserId_fkey";
       public          postgres    false    3032    212    283                       2606    47996364 $   Addresses Addresses_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Addresses"
    ADD CONSTRAINT "Addresses_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public."Addresses" DROP CONSTRAINT "Addresses_StoreUserId_fkey";
       public          postgres    false    214    283    3032                       2606    47996376 '   Banners Banners_DesktopThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Banners"
    ADD CONSTRAINT "Banners_DesktopThumbnailId_fkey" FOREIGN KEY ("DesktopThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."Banners" DROP CONSTRAINT "Banners_DesktopThumbnailId_fkey";
       public          postgres    false    216    2944    218                       2606    47996371 &   Banners Banners_MobileThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Banners"
    ADD CONSTRAINT "Banners_MobileThumbnailId_fkey" FOREIGN KEY ("MobileThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Banners" DROP CONSTRAINT "Banners_MobileThumbnailId_fkey";
       public          postgres    false    218    2944    216                       2606    47996393 *   Bulk_pricings Bulk_pricings_VariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Bulk_pricings"
    ADD CONSTRAINT "Bulk_pricings_VariantId_fkey" FOREIGN KEY ("VariantId") REFERENCES public."Variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Bulk_pricings" DROP CONSTRAINT "Bulk_pricings_VariantId_fkey";
       public          postgres    false    222    2946    220                       2606    47996400    Carts Carts_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Carts"
    ADD CONSTRAINT "Carts_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Carts" DROP CONSTRAINT "Carts_StoreUserId_fkey";
       public          postgres    false    226    3032    283                       2606    47996405 &   Categories Categories_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_ThumbnailId_fkey";
       public          postgres    false    2944    229    218                       2606    47996415 &   Collections Collections_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Collections"
    ADD CONSTRAINT "Collections_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Collections" DROP CONSTRAINT "Collections_ProductId_fkey";
       public          postgres    false    253    2981    231                       2606    47996410 (   Collections Collections_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Collections"
    ADD CONSTRAINT "Collections_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Collections" DROP CONSTRAINT "Collections_ThumbnailId_fkey";
       public          postgres    false    231    218    2944            D           2606    47996796 !   Coupons Coupons_CollectionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Coupons"
    ADD CONSTRAINT "Coupons_CollectionId_fkey" FOREIGN KEY ("CollectionId") REFERENCES public."Collections"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Coupons" DROP CONSTRAINT "Coupons_CollectionId_fkey";
       public          postgres    false    231    317    2958            E           2606    47996801    Coupons Coupons_MediaId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Coupons"
    ADD CONSTRAINT "Coupons_MediaId_fkey" FOREIGN KEY ("MediaId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Coupons" DROP CONSTRAINT "Coupons_MediaId_fkey";
       public          postgres    false    317    218    2944            F           2606    47996806    Coupons Coupons_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Coupons"
    ADD CONSTRAINT "Coupons_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Coupons" DROP CONSTRAINT "Coupons_ProductId_fkey";
       public          postgres    false    2981    317    253                       2606    47996420 3   Custom_couriers Custom_couriers_OrderVariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Custom_couriers"
    ADD CONSTRAINT "Custom_couriers_OrderVariantId_fkey" FOREIGN KEY ("OrderVariantId") REFERENCES public."Order_variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 a   ALTER TABLE ONLY public."Custom_couriers" DROP CONSTRAINT "Custom_couriers_OrderVariantId_fkey";
       public          postgres    false    235    243    2970            7           2606    47996717 *   Global_brands Global_brands_FavIconId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Global_brands"
    ADD CONSTRAINT "Global_brands_FavIconId_fkey" FOREIGN KEY ("FavIconId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Global_brands" DROP CONSTRAINT "Global_brands_FavIconId_fkey";
       public          postgres    false    218    299    2944            5           2606    47996707 +   Global_brands Global_brands_LogoIdDark_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Global_brands"
    ADD CONSTRAINT "Global_brands_LogoIdDark_fkey" FOREIGN KEY ("LogoIdDark") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."Global_brands" DROP CONSTRAINT "Global_brands_LogoIdDark_fkey";
       public          postgres    false    218    299    2944            6           2606    47996712 ,   Global_brands Global_brands_LogoIdLight_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Global_brands"
    ADD CONSTRAINT "Global_brands_LogoIdLight_fkey" FOREIGN KEY ("LogoIdLight") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Global_brands" DROP CONSTRAINT "Global_brands_LogoIdLight_fkey";
       public          postgres    false    299    2944    218                       2606    47996434    Leads Leads_AssignedTo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Leads"
    ADD CONSTRAINT "Leads_AssignedTo_fkey" FOREIGN KEY ("AssignedTo") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Leads" DROP CONSTRAINT "Leads_AssignedTo_fkey";
       public          postgres    false    283    3032    239                       2606    47996429    Leads Leads_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Leads"
    ADD CONSTRAINT "Leads_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Leads" DROP CONSTRAINT "Leads_ProductId_fkey";
       public          postgres    false    253    239    2981                       2606    47996439    Leads Leads_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Leads"
    ADD CONSTRAINT "Leads_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Leads" DROP CONSTRAINT "Leads_StoreUserId_fkey";
       public          postgres    false    239    3032    283            C           2606    47996783    Marquees Marquees_ImageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Marquees"
    ADD CONSTRAINT "Marquees_ImageId_fkey" FOREIGN KEY ("ImageId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Marquees" DROP CONSTRAINT "Marquees_ImageId_fkey";
       public          postgres    false    2944    313    218                        2606    47996474 ?   Order_status_trackers Order_status_trackers_OrderVariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_status_trackers"
    ADD CONSTRAINT "Order_status_trackers_OrderVariantId_fkey" FOREIGN KEY ("OrderVariantId") REFERENCES public."Order_variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 m   ALTER TABLE ONLY public."Order_status_trackers" DROP CONSTRAINT "Order_status_trackers_OrderVariantId_fkey";
       public          postgres    false    2970    243    245                       2606    47996469 2   Order_variants Order_variants_CustomCourierId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_variants"
    ADD CONSTRAINT "Order_variants_CustomCourierId_fkey" FOREIGN KEY ("CustomCourierId") REFERENCES public."Custom_couriers"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."Order_variants" DROP CONSTRAINT "Order_variants_CustomCourierId_fkey";
       public          postgres    false    2962    235    243                       2606    47996459 *   Order_variants Order_variants_OrderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_variants"
    ADD CONSTRAINT "Order_variants_OrderId_fkey" FOREIGN KEY ("OrderId") REFERENCES public."Orders"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Order_variants" DROP CONSTRAINT "Order_variants_OrderId_fkey";
       public          postgres    false    2968    243    241                       2606    47996464 8   Order_variants Order_variants_ShipRocketOrderItemId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_variants"
    ADD CONSTRAINT "Order_variants_ShipRocketOrderItemId_fkey" FOREIGN KEY ("ShipRocketOrderItemId") REFERENCES public."Ship_rocket_orderitems"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public."Order_variants" DROP CONSTRAINT "Order_variants_ShipRocketOrderItemId_fkey";
       public          postgres    false    243    2995    265                       2606    47996454 ,   Order_variants Order_variants_VariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_variants"
    ADD CONSTRAINT "Order_variants_VariantId_fkey" FOREIGN KEY ("VariantId") REFERENCES public."Variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Order_variants" DROP CONSTRAINT "Order_variants_VariantId_fkey";
       public          postgres    false    243    2946    220                       2606    47996444    Orders Orders_AddressId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_AddressId_fkey" FOREIGN KEY ("AddressId") REFERENCES public."Addresses"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_AddressId_fkey";
       public          postgres    false    241    214    2940                       2606    47996449    Orders Orders_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_StoreUserId_fkey";
       public          postgres    false    241    283    3032            4           2606    47996702 (   Payout_logs Payout_logs_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Payout_logs"
    ADD CONSTRAINT "Payout_logs_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Payout_logs" DROP CONSTRAINT "Payout_logs_StoreUserId_fkey";
       public          postgres    false    3032    297    283            %           2606    47996527 .   Product_metrics Product_metrics_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_metrics"
    ADD CONSTRAINT "Product_metrics_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public."Product_metrics" DROP CONSTRAINT "Product_metrics_ProductId_fkey";
       public          postgres    false    253    255    2981            B           2606    47996776 -   Product_reviews Product_reviews_AvatarId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_reviews"
    ADD CONSTRAINT "Product_reviews_AvatarId_fkey" FOREIGN KEY ("AvatarId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public."Product_reviews" DROP CONSTRAINT "Product_reviews_AvatarId_fkey";
       public          postgres    false    2944    218    311            @           2606    47996766 .   Product_reviews Product_reviews_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_reviews"
    ADD CONSTRAINT "Product_reviews_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public."Product_reviews" DROP CONSTRAINT "Product_reviews_ProductId_fkey";
       public          postgres    false    2981    311    253            A           2606    47996771 0   Product_reviews Product_reviews_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product_reviews"
    ADD CONSTRAINT "Product_reviews_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public."Product_reviews" DROP CONSTRAINT "Product_reviews_StoreUserId_fkey";
       public          postgres    false    283    3032    311            "           2606    47996502 !   Products Products_CategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_CategoryId_fkey" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_CategoryId_fkey";
       public          postgres    false    229    2956    253            !           2606    47996497 )   Products Products_CollectionStaticId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_CollectionStaticId_fkey" FOREIGN KEY ("CollectionStaticId") REFERENCES public."Collection_statics"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_CollectionStaticId_fkey";
       public          postgres    false    253    2960    233            #           2606    47996507 $   Products Products_SubCategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_SubCategoryId_fkey" FOREIGN KEY ("SubCategoryId") REFERENCES public."Sub_categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_SubCategoryId_fkey";
       public          postgres    false    253    285    3034            $           2606    47996512 "   Products Products_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_ThumbnailId_fkey";
       public          postgres    false    253    218    2944            =           2606    47996751 (   Return_orders Return_orders_ImageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Return_orders"
    ADD CONSTRAINT "Return_orders_ImageId_fkey" FOREIGN KEY ("ImageId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Return_orders" DROP CONSTRAINT "Return_orders_ImageId_fkey";
       public          postgres    false    218    2944    309            ?           2606    47996761 /   Return_orders Return_orders_OrderVariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Return_orders"
    ADD CONSTRAINT "Return_orders_OrderVariantId_fkey" FOREIGN KEY ("OrderVariantId") REFERENCES public."Order_variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public."Return_orders" DROP CONSTRAINT "Return_orders_OrderVariantId_fkey";
       public          postgres    false    2970    243    309            >           2606    47996756 ,   Return_orders Return_orders_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Return_orders"
    ADD CONSTRAINT "Return_orders_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Return_orders" DROP CONSTRAINT "Return_orders_StoreUserId_fkey";
       public          postgres    false    309    283    3032            '           2606    47996537 A   Ship_rocket_orderitems Ship_rocket_orderitems_OrderVariantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ship_rocket_orderitems"
    ADD CONSTRAINT "Ship_rocket_orderitems_OrderVariantId_fkey" FOREIGN KEY ("OrderVariantId") REFERENCES public."Order_variants"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 o   ALTER TABLE ONLY public."Ship_rocket_orderitems" DROP CONSTRAINT "Ship_rocket_orderitems_OrderVariantId_fkey";
       public          postgres    false    243    2970    265            &           2606    47996532 D   Ship_rocket_orderitems Ship_rocket_orderitems_ShipRocketOrderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ship_rocket_orderitems"
    ADD CONSTRAINT "Ship_rocket_orderitems_ShipRocketOrderId_fkey" FOREIGN KEY ("ShipRocketOrderId") REFERENCES public."Ship_rocket_orders"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 r   ALTER TABLE ONLY public."Ship_rocket_orderitems" DROP CONSTRAINT "Ship_rocket_orderitems_ShipRocketOrderId_fkey";
       public          postgres    false    265    261    2991            (           2606    47996542 E   Ship_rocket_orderitems Ship_rocket_orderitems_ShipRocketReturnId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ship_rocket_orderitems"
    ADD CONSTRAINT "Ship_rocket_orderitems_ShipRocketReturnId_fkey" FOREIGN KEY ("ShipRocketReturnId") REFERENCES public."Ship_rocket_returns"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 s   ALTER TABLE ONLY public."Ship_rocket_orderitems" DROP CONSTRAINT "Ship_rocket_orderitems_ShipRocketReturnId_fkey";
       public          postgres    false    2993    265    263            +           2606    47996627 3   Store_subscriptions Store_subscriptions_PlanId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_subscriptions"
    ADD CONSTRAINT "Store_subscriptions_PlanId_fkey" FOREIGN KEY ("PlanId") REFERENCES public."Store_plans"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 a   ALTER TABLE ONLY public."Store_subscriptions" DROP CONSTRAINT "Store_subscriptions_PlanId_fkey";
       public          postgres    false    281    271    3002            *           2606    47996622 8   Store_subscriptions Store_subscriptions_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_subscriptions"
    ADD CONSTRAINT "Store_subscriptions_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public."Store_subscriptions" DROP CONSTRAINT "Store_subscriptions_StoreUserId_fkey";
       public          postgres    false    3032    283    281            )           2606    47996613 <   Store_support_tickets Store_support_tickets_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_support_tickets"
    ADD CONSTRAINT "Store_support_tickets_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 j   ALTER TABLE ONLY public."Store_support_tickets" DROP CONSTRAINT "Store_support_tickets_StoreUserId_fkey";
       public          postgres    false    279    3032    283            .           2606    47996672 %   Store_users Store_users_AvatarId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_AvatarId_fkey" FOREIGN KEY ("AvatarId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_AvatarId_fkey";
       public          postgres    false    2944    283    218            ,           2606    47996662 #   Store_users Store_users_CartId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_CartId_fkey" FOREIGN KEY ("CartId") REFERENCES public."Carts"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_CartId_fkey";
       public          postgres    false    2952    226    283            -           2606    47996667 #   Store_users Store_users_RoleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Store_users"
    ADD CONSTRAINT "Store_users_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES public."Roles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Store_users" DROP CONSTRAINT "Store_users_RoleId_fkey";
       public          postgres    false    2987    258    283            <           2606    47996744    Stories Stories_ThumbialId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Stories"
    ADD CONSTRAINT "Stories_ThumbialId_fkey" FOREIGN KEY ("ThumbialId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Stories" DROP CONSTRAINT "Stories_ThumbialId_fkey";
       public          postgres    false    2944    307    218            ;           2606    47996739    Stories Stories_VideoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Stories"
    ADD CONSTRAINT "Stories_VideoId_fkey" FOREIGN KEY ("VideoId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Stories" DROP CONSTRAINT "Stories_VideoId_fkey";
       public          postgres    false    218    307    2944            /           2606    47996677 -   Sub_categories Sub_categories_CategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sub_categories"
    ADD CONSTRAINT "Sub_categories_CategoryId_fkey" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public."Sub_categories" DROP CONSTRAINT "Sub_categories_CategoryId_fkey";
       public          postgres    false    229    2956    285            0           2606    47996682 .   Sub_categories Sub_categories_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sub_categories"
    ADD CONSTRAINT "Sub_categories_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public."Sub_categories" DROP CONSTRAINT "Sub_categories_ThumbnailId_fkey";
       public          postgres    false    285    218    2944            8           2606    47996724 *   Testimonials Testimonials_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Testimonials"
    ADD CONSTRAINT "Testimonials_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Testimonials" DROP CONSTRAINT "Testimonials_StoreUserId_fkey";
       public          postgres    false    3032    283    305            :           2606    47996734 *   Testimonials Testimonials_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Testimonials"
    ADD CONSTRAINT "Testimonials_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Testimonials" DROP CONSTRAINT "Testimonials_ThumbnailId_fkey";
       public          postgres    false    2944    305    218            9           2606    47996729 &   Testimonials Testimonials_VideoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Testimonials"
    ADD CONSTRAINT "Testimonials_VideoId_fkey" FOREIGN KEY ("VideoId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Testimonials" DROP CONSTRAINT "Testimonials_VideoId_fkey";
       public          postgres    false    305    2944    218            1           2606    47996687 *   Transactions Transactions_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "Transactions_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Transactions" DROP CONSTRAINT "Transactions_StoreUserId_fkey";
       public          postgres    false    283    289    3032            2           2606    47996692 $   Tutorials Tutorials_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tutorials"
    ADD CONSTRAINT "Tutorials_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public."Tutorials" DROP CONSTRAINT "Tutorials_ThumbnailId_fkey";
       public          postgres    false    291    218    2944                       2606    47996383     Variants Variants_ProductId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Variants"
    ADD CONSTRAINT "Variants_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES public."Products"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Variants" DROP CONSTRAINT "Variants_ProductId_fkey";
       public          postgres    false    220    2981    253                       2606    47996388 "   Variants Variants_ThumbnailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Variants"
    ADD CONSTRAINT "Variants_ThumbnailId_fkey" FOREIGN KEY ("ThumbnailId") REFERENCES public."Media"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Variants" DROP CONSTRAINT "Variants_ThumbnailId_fkey";
       public          postgres    false    220    2944    218            3           2606    47996697     Wallets Wallets_StoreUserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wallets"
    ADD CONSTRAINT "Wallets_StoreUserId_fkey" FOREIGN KEY ("StoreUserId") REFERENCES public."Store_users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Wallets" DROP CONSTRAINT "Wallets_StoreUserId_fkey";
       public          postgres    false    293    283    3032            �   2  x���Mk#9���_��������%��a/!�=������������XR��-H.y������Դ�|b?�y�gq�����~:��k����y+^��us:���O�����=ޭZi{���b֔��A�_U�/D�f�&A&+���ޛJ�#��(A6��.�䪕� ,�T���d{i�hp|Rg��R'�Kk4��/M7��٪����ӝ#4�2��(it��=�!�H� �m̎�"]I{DCb��}�!�L�l�@j�����4>�vO{�y=��o���b�v;n�����~�~��"���������jYL&�M�F�Vޠ/끈eɡ<L��2��9��ĐL(�C�^��U��@фҗ�SY�"U��ʐM��y�P��ԫ�:�`u�ڠc��i7=���⽫.}t�p�����a�t�[eW���WJϧ�Q�=�F���S)������4�`�LKEe�X�g�?�,Ʉ�Z��Z)�\l�-���X�F`K����*{'K �2RG�Ő�|#m�,�TJc��l���Zk�`e	��ҘM�np�`�	�si��A�^zM�d��.�]�)�3��+m�,�R)��T�e���&p��=��K��z�=��e\����:�^��
�ʓJ���֕~�ڶ����J�m�6N���B���ҥt��`��p�`�ɥK�U�Qь��ʓKVh��ْ����V�\r���s�7k��㜿ɗ��4Z�f|��o�Q���p�*-MJ��Ax�<!���`T�O���V��
�-^�n�����9��ob;n��gH~��_�b:lǃ\<|\´\��߭�_珂ѧ~���uZ� �u?�y�OTd�!��h^���LsȢ)���Q��P(�_��F�Э�A4X� 
e(�e쒡Rz+�ht)m�|霝�^#Xyr'�o�*�n�-��'w�[���q��VV�܉�R��.��g�`��.2<nIR7[�G48��(����A�ꩵ6V�����q��4���+�p�J˔�ZR��j�ʒMZ��g��W��zx�ʒM��/�t�Rgm�,٤I�*�ʦ��G��dS)���R��{��E��/��O      �   �   x��O�
�0���x{cHҦM:� 
�����A��	�U���"��p����q'I��a�m�7��d��ȡ Uj4�pZзp@���|kH�d��0�'؄!�;��O�;?�*7�.xc�� �yI�$V[m��u~yH���˄d�[��6J�l%�J�d�M�%׹L��)Q�GӊبL�Re\�cڷ�цSJ#v�      �   �   x�����1Dϓ��ؤ:�I:��PG\����a�&��:=�Q��x�v��|���;]�4pd�Fۂ7[�-
I֟X�!�x4@:RY_�Jƥ+}"�=��ҿ�<^���)k-�J���A���]���2e��OeO
(_,�Ҙ�9���e՗�����pc#�.�]���q���?2����rK��<~O�B�2 yw      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   _  x�u�MO�0�s�+r₈�Nn�d��XKځ��L[H�����N J8�z��$�n��&�{�p ��^;o/��U*�0,��J��`�eݰ66W����%��Rz�\+��p��$Y*�T�iYU���(&��+�Ze;�����JC�U���26��5�a�Y�}���r�U�2�JG�����vU��3+�T�k�[�rW�d9
:Y�B��f���si:��n�)��������^X�=�;����:���	�T	�;^Y�{^v��c	Í�YI;��tb
���y�>�Y{<�?v�o��r��1�:=��JK҆�zU?��	�?E�ˇ^���S>M9��
��      =   �   x���M
!�ᵞb�eB�4Ƴ���QgW�h���>F��$>�:�^��[��I���(	���T�T��i�S����5�&���N�4躦?�&�N
"��)i�I�A��g`u��-��r0�B�4�|A��纹�      �      x������ � �      �   w   x�m̱
�0 �9������r������8w��,���ח�V���ne~�p��=�=?�enku�,�;�@j�[����0��p ى�t���\�R�o��X%�ҟ)����&ڧ	���$�      C      x������ � �      <      x������ � �      A      x������ � �      �      x������ � �      :      x������ � �      *   �   x�]�Qk�0�����jLbf�P�1��n��(�%F�V�Ĉ��OK;�=\�p�w����~p�GO�N�|�_�Qh��\�A2��KNi�{�gP� )��Z7[�*8m[t(P��~�IU8�J�v�3G�=tX�D�	j��,���2N�]c/�w`��;�O��=��~�CN�D>��Kk��p�y}'�c:�яe}�l�]X�r�EHe�טɌ�,�D��ʋ��l���-�('�g)^&E\��@� ���e�      �      x������ � �      �   �   x�}��
�0E痯�.J�h^��Z(Z��E(B�DA-��C��8��^�9�8��VF	� !	�͗������p����NД0-�� �TP*r��I�eHE"�n��KS2\��w�+�o C�Z���]?�8�9�5�8~�q�"s��9�Y�q����4c�/$<�      8   �   x�}�=�0��9>EwT�?�����
�P�=#��0��ϬaY������z���!�3ՙ�$�bnd��OT�&c���'�$��4�WF"u�.��@��5fW�E�<�b��
]�\\�4�X�/��zB��8��2�Dh"��%+ �
�H�jq�C�
�/'&u�      �      x�͒͝�8����S��3� _�����==�c�ݽ��DTP"U�n���T]�O�{��v��1�b� $��"	�Dw��r�m��d� A�N��}>�������_����C��	~��x�y8��4I��/�u��O��?P�(Ӝ+�87rn��"N�lfD<Ss�(-�|n���������1�1SS����:a��~%b�t��M.U6'��9�D,ZŚ+9�@q��a���J�-a7��%��E,%�ѶJ�F��xY�UY��n�\zq)�)W~_(�BqGu~\+E2W��&�H�x>SY,�,�S>���5Z�����R��q��l�S��S�L,�b��yS�g�i�g�t��w�B�t(.�3�9B2I��ә��d�j����\t�������PXIѶ����fs�h��X�L�z!_H�w����N�(	��60�P�ɧ��^�pRDi@�PJB�� gs�b��E,��F�E�cg �gsݍ�y;��"����2ưn9�bXp��R4N5:s�2N ��b��+����7$��o_�pRDC�[���fN2;8�xN$�.q����kS�ϔ@o����_��7$�9^z�g!�NU!ofH��՜��l� s�m���yM��
^.o4���<V�"��(��G�3�o����RDC"\�+��T/�Z�0P%�#Fk�Yh��YG��7
�������>�0�G	p�DH�;S�f���ء�4FN��b��2�yڍ��]���!�A���J�x�Z���Y�^/��j���ě��v�NW��>�U�n����9��|��@
)bt��_^0ootR��_��/��ƿ|���N�X@(t���/���������N�X@\���Z����#�7�8)bA��7��}�i���o��F��>ϝ�D�#<�1}�rap���d���`Ƨ�B���բ#�w�qR�"��ܼG8�|��Q4! �
ДQ������w﮿��Fk��e�Y�Ɣ�x�k;�s���M�-[��K��& 2Ypb�~�����81���7��?�vR�f�ad�a٭���.v���J����N�xH�{A7�[�4$�شf�n�k�N�	C�X+�H�q
)�!� c5�nkP����"~YO'�3��gN��
� ��?W��TŚ)cNt�eNp�DS�8�[,z�K�/���D�_��BS��V~��{�t0esd�Ӱ��-����H��k&��Հz�T'E"$d�F�-�����"�Zɺ���n�H�������'���GJ�0�O�6R/x��e��FƩ�<^d3��dA)붚���I���i���o?�����Dܼ�����5�]��&bU8��[O8�̌�P7L�i�řY,b�1��E.��`N2ȉ��MB���䠡l��?ƽl�3�z�CG<u�͌e���9
hS��Y�d����L0IYh����"A-6��뎓!��N�  92Y#떻�?uR!ȑ�Yǰ�O1�A@r�8��u��.��Y�7]�K�N� `�E͐���:)9<�i���nA�,�.��߿vR1őA��[���c'E8�l�u���Dǥj\��إ��I��d��_r��;)�a���2ٻ�:���̭xʀ���L��;�R���M�e@Ph�z�����:)�a� 3�L��O����/����-do��L���㮼���#����c)�7�;)��\6�S"��p�͌��BǊ�3�]p��x�Q>Ӌl>3�:��H�D�������?��]W�N�H�ć���?�sR�B�#.۲s�$����"7
2em��YƄ�c��|Nb��<���\-���Y���I�
�'OĔ)E��x!y�q���/b���,W*�H��)R!�� ����m׫!��B"M����v�����L�<3$�l��LN3
��3C�:��sc�4My�x���)�����"54q�(E�,]����|��a�M���y2�*�C�!'.�N\ۻ�:�J���N���8S��k/o�pR��ƙ��X?�ys'Ezh49[�9.��bޜ�I�M��'�>���qR��ƌ�Ũ�=-�Q:)�Cc��bp"�e1���zxd0�嚾^��_�b�������:��r��n�^ާ���`���~��7?�m�{����~�yX��
��n�������7_1;b&ٮ;���N���h�l�?Jq�����ұ����K;����Λ����&[��nA��l���js���j�@j��o�ߗ�dHڟ!9)�fb�����}�@����N����Ȑ
�	@�v5�^C'E���$�$IG$o�rRdX� �H�\�I��$�$:"����F��0�F�����ܹ7T�d ��$�)��"#+H���8���;)2��������#�7-qRd�#��ʳ�4.2�(��.����ç�����n�=̋5�mV+��������Cz�K�Ȗ�������p�ڈs�L�w���{��_�o-�����l����/�,�t�����G�	"~��nsؼz��Mo�WG�W�mH~�>,�|~�?tx����n� %t0�n�g4O֯Z�����H���l(����j���<N��t�.w�x�t�|�^ ������3zO���7�8]�]��=�+`o���;�L�x~���j�Kow�E�ߣ�U��_�'�<���`Z��q�X��C��ec7Zg��m���'nw�fH�������/�9	�Ƈ�m��v��F��x��h9�����wcw��!>,sg�<�����l׾�~�J�=��U�v�]�s�Km�,OK���8��Zī|}����3�k}~�9�|����g;��O׳0�����:�E��5wW4^��%���w��c�{��|{�f"�ʙ��D0��f�t�MY������h����Tv��fJ�WB5�|CBD9�&��E��0�	�
�'@B(9�
J��yDuEIc:אR�i$�I��B�$�x�U�w�d�HcZ!�RD)��!e�j�5$��%� Fm(WC>�����M��l,@F��dx5e;�IBD��r���|�����4a��,!��
��#j�2�%D�ɇ�]�Jw���B(eφQOe}�^� MLĔ�+�l�%��bmB��<]͗��n8�f�י5
��Qr:���VRMU�w���3D	�j���	��+�0��&aYBD=�&8��D,Q��� �) g�t���0�6
�	mL��j�"���K�>l>��ŌqW��VvEfɬ�V��N>�y=����_�󛟦o����z��O����t0+���Ka�v��lg�l�[:��\��DhiBI�&`����t7�K�3+%�����E��a�ML�?����$��ͧϷ�z0�܀�������꭬6	����7o���c�H&�}�����*E5�d15�>K��CbCB<(����p8ɕa���
�����D+K�&�@3��>h�1L7$DS�����F��hv��
�A�RA>4LDZ�J��1Ѐ0�0��$!���E��\���)��A�ě�7��RD9�l1
M��r;ݮ�7��MZ�-�f�}�\�V]� g-�%	a阰�S>V'��vؓ��,8Q@L�"H�D�  b��ʩum��Q�@�w}�t�IK7)Kgw{�7S����$0ж(����|��J N+ubIBDQR��"�ܜ���e	�d�������!1�յbZ�pD�+1��{U	��l�M�L7�)%!���
W�����fa��2�3K0@�#�$D֓�w�`J&���B|PܮX�f��Je¡4��+�IH31�Jd�)�����\t��S6���] '��)!$=Zn8�"�ɳj)>,mW�����X�i�`�5E0.(�����aRGi��G��h|��.O����}�J~^,C�'7\KV�ݴ��V\���H�j�V%��+�Tk��}����N�4v����!�$D��9��(p��A<I�8�ݒ��sĻ�-)q`�J4mE<K���B4Jʞ��$LB+�YBD��jU�D�u��AT+�YBD3�f�7�}�݊g)�@F��T0�Xv�1V"�   V�kBұ ��Aڜ%��W�$�d#�s* �:�s*�p�ތh���	B�ސ2ᬭ۔$��>\���3��t��2�6	G�'�1`u��]�`�yrSBD9���K�����4��([Pi��EDz\Ң���"�#"����Lh�$B�/l�?S��8����$Dy��]첷�.؋O�9���iu�nH�c&0��KH.�9�lg�'�)�NT � ̨�zǭzقS��Nt��J�sE"ڬS��M��TRc��=Ĥ5B�h�6	��$ x��;�1O�
�>�b���@bB�Ў/95L+F}{�Ou
4N8m�%ā	�qф��_^�S�C�[.WYBd���:ʮǠ���$�Qa8Z)����v������8:�ba�
8�y�b��$ڴ�<)c�`��+}����M�#���*2��5&dn�wF0���4Kjó���� uO�I�G'����z��~w������Wz�>�D��w��,;Ud��۪l�u���?�I@Q������f�+�ˍ�PU��l�a���ow�������\-��C7�`�7�a�(���oK�;��e����H�.���\�?$V�b'�X�j����{MB�"V ���@�ʄ5�WMB�"Z���ҥ"|@`Gam@%	�0^�H�<���C��vf���+VR��1�1e����N�ưS�#��t��!�r��jűX�\���83���n���r��*S��ޔ"�Ʉ��@�5F�4;t�r���WrQ�C���D�K�N����O�j��6�~9p�H�(V+��_*��$!!�S�V�w�p%�m��!!���'���C��K��(Ώ*__@��q挎��sƆ�h0�$8o쇦k9eCB49%T�A�뙺�$!�*��]~��5����]��2 ����\�[X���M�����%�1���&%��$!�yl�����,!}�"j��ؒc�b3��ښdCBl��8D� ��揦�������ؐ@-)kH��G��0�%�v=�}$)I�-^ [�:[�L��IJb�K`+����� ]�[������Í�9!�m�]�{�(����@')�*�H�I�=~�Dl#��Fpޚɕ$�?Jj;�ðu�`gmCC�?Jj���@��vs�m�]�{�(�r�olZ��vIBl7���6�i�ZM��;\m8�@t#�l��X���=�Q������J$k�����/���!��JZW�G�����K�'�{b�`T��+����{QSJ��"&لW3��0q[%�,P�ӖK�;ܼF`��;"���b{s��d���X��ZWJ�vY9������vƓ��z�ˊ���e	/��ΌpY�v��P}�p�1JF���B����	����$���y�� {{�PO=I�F��h?�������$!�v=ݳ�
�Ÿ� VWq�X��P��C���63>)�-w6YLYL���i�}�06�~���!����汮Ӎ�c}v����M��KhH�HY<��֍�t.�І<�U�n?e�J"E���$�+��A���"�d;�IBH�ql�~w����F:	iFsې���6(?)cd4g����v�ꫜ[Dl�31�� �g�D���w��e�%	�Fsېޮ����$!�X�Ү�h��YK�}�( ��G���7/�*���U�6�iq*�Ջ4�'̴�g	)Gs5lHτ� �=TܔRM����������*>������Ͽ��tJ�������=�%�L?aa@��O���������[����}u-��o�?y���OX�'`?5)v��R�n�{��q�<���d��V�%�O����ePy�6+Khv=��0�$�V��o���luIz]AKVY���#�1�΅V��ƕ}��i�A���8R�"�G^c.�A��k�%6-k U	�G^cv؆���|f�8�k�����ޝ�!�� f��>va�g�'t
b�l�[��Ԑ�1��cwˏ�{�EK?(K��r��1q��(h�vU%l��B����ư.��{Tq&�H"�6F�\c�ѣ5s<��U	�^�1R2bcTsQ�*ac��=B.��g��=��-g��ĉ���f$D- ��5o!U����;�@�^/� ���tUBD:�x(C5�_x�Gه+i�D'��S��Md �I�C=cO7���\��O��S�(F�̹N`�l,V�$�@c(a��.�s��]s��k������p�/<�{�����WMB9� ���w��j��?�$�Q���0B),�9c3�X�I�'C�O�0����jd2i�JO
��	@Q� gϣp�V�kRĀLh y���a ��yLIB���~#� �AIQ�c'������^��	iH�N��g�AgG�b<`�xDs�+K�OV��ES8gg�]z��1���Ԗ����o�]�$΢��3��e�J����(i��.�k�v�[}�MCB09��4h.I�)�n�6��$�S���I �n��m��1f��TS�!ې"�v��G�]�8�jy��HW'-�<�m�iH�}�����ЊK����I�����k{�Rdߪ7؉,({&]P���I�C��0;Sy�:�WԚ8e	qX�u��.�qr�����8g)����l�ɕOuړCt+�I��?�ka$E�K����v:�
sR���baG_z��T%�[P��9K�#��G��titu'�U^��&!�~�}�(�ԥ�{�:qΌQ���kU�G?�q8E]<��T'�D���0f2��^�W�uU�⼐�+UR"�0�n��=�4�wy�P]�*#6��>U}��� &��f��4�^T�oJʆ;��g�j�s��p�ض-�Gf5%���q�}��\p�c��6��������a7���8�8��ĩJ���,����n�R�������(r���E�Tڿ�w�X�dÉ�¨��+�űFi�!(i����0z� �0�А��
�k<���ݔ�^Բ08�P�_�:�2Q
Za�R��C�B-�lL��K��:��5F���(t���%ZP�__;ׇ#�RmS��^�0R�߿z�ў�گK����F٣=����}��V';M	a���>c ;���\�=�I���%)�o���<�hq�I��0`�����p:��w��|�ԱB�o�dh����Y��w�4�Ⱦ��r3���A��L��Wo��N�rE5NU��e	���o&�^M�,J;^�c�ݚi��KfZ�Y�"����ʹG.$��f�i�Tݚy���ҎmqǊU��6%l�y���=(��vL!�[+]})�)��%��k�)EM�(�3��      &      x������ � �      �   [   x�}�1�  �����д�ha3�F|����,��%ǡ]O�c�;�F*�ύ�U6<l's$�x���e1I!�GF-i}��@��Ј��$x >5      �   �   x����
� �>��!��_���Vzݥ�����]*!?�9���ۖG�l1�LX&������I%�I�ݫ��h�ͷm^�u�ɤ��TC	��J��2��iq��bſlL�H�63d*�$���C�"��h ��5�p*Ƕ�����.��9��_�
B�zlgH�G�<���O��X�      �     x���MK�@���W�.]fv>��[�IES<D�ROBm��Y�j1���̾�g�YÝ�vީg/����~��z��>oo�a}[�d�Vw�����.��}	LLrN 6�&H<���6bBN���0�*���9���	���:y�n8�g�Yh�?Fŧ"������\�%'5To�o?��Sf��z=�Ԑ6��r}�OD�+./�[�:�e�\�d����1	��<�ǆu�N�OD����kZ:R���m��A_��<�42�~����UU��Չ      �      x������ � �      (      x������ � �      �      x���K��8��5���5�훧�=�ϸ���\6b���n�UE-P�x?�"�^��d�(Rm���R�@\��T��m���KQ�Y��%�|'�vo�������߳���$�tI?���և������-	-'zK�n�k��ˎ�S~qm�!��EYo�<���Z4R�Ǽ��w�Co��6v�M��0Z�������M�5���`���Nɩ����� ؆���O{�ө���m:�LlS����͗�-�
\ǔ{��������쐭�&���cqʓ� �,|�r	@�;��T��`�Lu"|}&�>hb�j��5�F�c3zU',5�$re}nSa��6��C/[�۟����z�O���q�`����L_[���'��Rzr�j��[_�7��9����<4��	.��:�0�lz��\��d��'�ƶG]���n^��Kӟ���t���9*�P�䧮&�4�c{˞l�'e�T
#W|C}�@�;���ko����'q�8\��Q�)��Wq�p�#9� �_��Wk���Z�/f��ksW�Q�����-�9��}�đ����,��
p�`�05OF�#��â�E>秗�J������UС1z�Vs$��&����F�X�&Cl1r����h�LNU��yq꡼Ei\��hw�H�
��30����Zuae�k��ձ.�~����DV�����7�d�qm;f6��45�+�7�p
#=7�H��r>ɾ�����6`��>���0,�H����"����1�G����8#�Sr̚�U����)��i}��YD��s�O��")���!Ϡh�U3��v�}�󴏙��U_e3�SЧ�۬NrhD�})8�E T�W_���!R��zm����Zj��o#���V�5`X��m����*�/g~ǌ��}m�Zw�`�q�oB8N�#5�c�0��g� ��ԧg����=Vr���!K���&�Ҏ���MNYEٕ
�rTT��4�������%+�n�0QQ>
���㎱�Tx�y�F:���)�����J���XύaJ��DKBF�������ǂ�ڰUԻ(�&�qF���f|��o������ao랒�Iz_כ��h4���M��<��8��Y����왑�����fP9������r��=�y�T �&ލ�1�'��.��i�hrlF��um3��G+p�M��I�ҿC�^��s��^�S�D"�Q��O�4o��M{v΁$��$�!���a�u�)k�9��8U�c3Vl��$���Ͼ��"�Xν̎�������b}���uWG�J��M�On1�v,�̀y�8��7�9/��2F:�@�4���8�7͑{�O�v��_R��H?)����D90#�^6�%����u�*���Z�׿��Iҵ7pF'���{�d�=K���¤���9���\�럾k����ux��-�=�SYNo�w�>D���F@�c�L�B�����7��h���>��/�0�/��a�EЄ�K�|ܦť�o�L�h:���:�f�X_�S�������}Wr�b�A�!V� פ֯�.؁홖��z+�7�J=nt�y.�l{>$'���`Խ�k�{�?@�p)���R@�h�r(���T�_�ߙ���(�"��f�o����I-��M��y�P2�,ټ����s��B��	�����*����irר d�c�sa�}0��]�psȆ5)�O�E?f��.a�f<4����(��l�M=Y�7b'Od� �Y�59��9O��M�y�n���Ժ�to�����?��_�=\�Ȍ0�?F�r���F��U�p
�y
MADwBq�ͩ���<M�嶢�o�?�0�灃+�)�A8g'z��Č�9
��1E��c�MQ�����.}��oťޥI�Jǡ��0����5��߳2�y�����Va��Q?uנ�C]�|�!TG��R���!.=�wl{,w��`�w&=�L�[���'kf��E&N,r��Buu���kQ|���.H����9�~�Ms�rjCD�UY�s�kJEὗ>0�u�ځH]��ʴ�c{e>=�;�c�`���im�2I��L%I	%l�6C��$Z�D��h�ċuh��*U��0)r([G�#V����V�^,�T_�l2v�*�%j;��xH~���a���q�M�X�U���'XX����e[�&���D�&�.2�*n�*P� (#6-��P\b�ru��vLk^��m��]����I����P�{�^�s',�_������̚����MY!�a;�$*����iv���ڟ�11���ސږio9(�Q(��}��S������A
N��,�n�o����)�!�N'a��Q`������m���`�z����FqO,=w�� �c�( �J�a��+�%��	똝����<~�w�%�s��8w'l%�x�Z�f��	���	��Y�60!��q<4�t�"s0H�C��Y�4kh�+�x�$I�b����0�Op8g�8	��o~:g�1���[oլ�ƸR�tל.-̸�`lϘ-��JE���MYh�2�Zh����g���������](b��P�hY�ܧ�|�2$��#ǋ՜�a����m%_)�%��>k>��3'�̥ ��m���,r�bΰt|o'46��J��g`��
��$��C��+8h����{��ܞ�C��m#�Mp�.ɺ�`�؄z�	���M��W&3��_����+bq���.m�o���#�%��k���J掁�n�bxS���(�E�^(P ���s�'�4:�+±"=燚�Z6�!c�D����oa�h�.O;�L�8r�c��ւ-l<��w�������4l{��	�b
S��i�<�_<2�
±03B-����pX<~4/���рS���!�6� �~X⛦I����H6 x*
q�bvo�{���A���=�	� %$�殅b��X��!��U{�A�#s�z�A�cs�����GC��[�AʊU�e��_䘒7��"bֿ�]G��D���xo	^�vH��Mc�+�D�q�Y�(�gIs(��gybC.2�)�@\l�}C��MYz�~
��Z`Y;j�WG@�K�|�6@���s��"oO��Ԝ�����;]9vy��2?s�͵)«���i�� eKe\��h]�E���m���{����u�@|�/���1D?)��B�)�\�4;��g�w����R��������K��S�.U�֨����Z�N�W_��,�9���Qc�Z�������3�~��X�p��F�M�J̅�fa��I��F��5��]n
�y�ђ*�k�xUV���'��[&����%���2RD]I��D�8/�>O�]�K���CT-ۼΎc�X�d�hO��qazƻM+Z;�@j�f����!��������:��4q�T�Lè#ow��(��w 'Z�A��,� ^�@���ZUA��BF�%�Y.c�GQJ�u_�sO���'��L����z���k��p��i/ �É�f
��V���r���S�D��
�Q<@b8O�s`!��N�%��q�!�2��cN>"��pǠ����V��L����O]!.�$�e9&n�>q�i�00�������h�hG��Jb0M�}��BÊ���|aE*g֬�F.�'nd��Dc�E76�k���c�ڳ��P�Ec��s�)�.�F� �"t�M��ae�u�.o��>t�.���׳dG/�&�E�Z�Ϋ�R�;�DՅ�U���
'FQ\������z�x�g��}{~�Ø����RZ�CVY*b��:���-�,O���!�7Ǔ��X����S8�M-��.	L���Ͻ��c�njK��)1z~͏�i�+ =?N�x��~���&��5j#��i��_C��L��bq%	�r!J�]A��\�.��[�#�|���N���˔����"h��j��ȫVҲ ����S�^�-����6o����X:��!{��ZGx��ⷤ%b���h��Y��;�i��6�c�$$��5���]�:�h�pz˫e���09�{�
b�����h������G��k�au�����   'Z������$�a��W��U{�G�LNU�*Y��1���KH���O�������Tkh!K�h^U��S0��D�H��;��T�����tA/����q�����|���9��E�U�]k��{N��	��^��F�XM(��Ȋ���u,0�m���3��]�~���L~�Q7����c��aŋ�骔��~���Tcg�"������R�tZ�v1�F�MlbJ�λ�&"���uAA��6���/�����{`W���@�L��'��S���[����6����lܑ��T��n~0Ê��^�ܸ�v:��������d�>^�nO�����˫��م��c�8Z�PK�쉾�������X�fȉ����_~��� ?      �      x������ � �      �      x������ � �      ?   �  x���A��0��+�aI�-����߱�p�����9���`����6��ھ���>��Gi��)�.��b�<�y��离4OTKS�N���٫��D��m�i��lRl�W�\��P�-WM�-Q�y
]�B��-t9P�R���6�j�B���AUĠ3�P��}y����`MH�K�B�%���`M�R"�y��`���1��j��u��<�A�s0�3DVz���w����W������ٜ�����As�GU�U/T1��'|"/=�U�򄉠���M�ȋ�I�^t"�y���j���#��'�:�(��u�DP�����������o�Q]LU�OULU�OUL5�TOUL5䭔j��:�`�/z肉F�<��A͓�� ��'��N4J�I���F5O"L�^���I���d�L�'�/��2E�D�{T����!���^B�+RI�}%�*���J�SI�}%�*�y[#�*���J5Ob�"�yC?]��^I��n_u�f�l;�o�)E���p| ^����s��}�?Q��]��6=�;����6�~{mMQ�i���]��}��q8�7���,�����.��C�k�k�[k�]���+��}�����u��-Wd���:GN�ı�?\����?N�,�      �   �  x���ˍ�0D�V�/��W�F0�Ǳ��XL{�1�[O�*�n�Y_�^�'��إA5���7��o�'�-dJ	�S�A�RB��Uv���}��n!SJ=@X����y�H����O�-dJb��(�"9I�x�~�'�v�w�.����\`��E:���Ɠ,]�cH����+��cxa�]�t���1�0�aX:�0�sq)J���Iq�Qh�K�V��(QXn?摢`f��A�3;�Se�W2��pQ����MT�ShDo��K",��Z��}tm'f�9���]�ZX�В�k �/�h2g�B�(g� ��QN�١����1��L�[a��K/" aS*�-�t���t��K�'�HW��� �y�Q덒#%�*�`�;3<����ILn�;*���k�剒��@ĸ��%��U�K.���R��e��XoK�E��n���Ƀ�?����ӆ3�      ,      x������ � �      >      x������ � �      6      x������ � �      �      x��=�n$�u��WP"����\8��%���^��˵%����L�=ݣ��;z�$�c��0bpsa#�����"_�sNUWWWwsz�+%$��tWթS�~)Nvng1g��x��o0��Ί%�:���J��t��<��fI*N�o�z����q��3�}>_���=��n(<v?�D��7�x�Qx�'^,V��`�w��3�U�%L$�Y�&9�I����<P��҈��*��9K�}���E�rD�a�|�Swp��>;�']�(e0p�<a� �E�:,�/�9�z1wXL��O8� H౜V�]�@�NS�+7N��n�?=�^* ��(6����<vW\�J/���"]�Ù��
xXsi��T��Y��G!��G~��>wS�p2�(dlOc=?��qo��h;I�6T�2_���>�8x�K�j�#yN	0D�Ⲉ^w&"@l�OԻ��(I��(��uGCr��*�S2OS<)@�*Zr�e��u�'�8��n8��F`�^�x^���Q��9{��6�b���(c'��]OY�cˀ����{�DwK�]9���b�Цlس^`%�^�=�D�E����8��xǋ`#zn�%ƞ/D�����3�j	'�m�A@~|�h�vN~�%��Q�}���Ph]+���7�`��b��G�U <גw�����|�8a�q����^�6�)@d3�#���p�.��.?�_ٔ��s"ɻA��5�|��2�ހ<I�q=�N�JC����� C���\����#���~��YJ۬�؋(>KOV� ���y���+
D���>$�#�0kr���d�3�����z�
g��mV������7s��ƺ�k�T`�/�V�ר@ �F�Ǵy'�Q��ͪO+T����mu�^���y*zo�b,�ZV����hȯP1nP��7U�e���|�zP����{��(i]�x�e����{k��@���~��Σh�.��������w~�}����q������<���Y�~����.�����%�w�������%������ }��Cw�Z�;�`���~�x�V�zq+߹/�U���,����Ap�s��4�27K#�U,��M9L�6[p��~�����ޝ�?������g��������GO��v���p�7���3�����;�|�w�9c挧�Ѵ�=<p��GOv��tƻ��C��}7L����>��g5(��*��T�\�*���!����\e���o9]aG�,g��I�D(U'���Dnj ��-�;8������4��Q �0!���R^��c}w��3�sr� &: �k����wQO�P$aIk{`�8����(e.�l�
Iv���-I���FA�n���v��p����J�i�&�@W���(У�ƃ�n�N���m���q�;�5�|�i(y�����
u���,�:�y:��)�Sw��B���(uKZ��d�9|w-4Ԉ��1wc�遪:2�؏#PW)����A5/��/���d��,�%g��7]���E`�!\<��r�b�W[�A�Ds^h��U,�(��0K ��'��4��[x?����1 њ!w�"�B�r7v�@X�d�����gQ�S � v�P�D�! ��l�
P�#n+Y��0�K��׉�V�Q�]�9��1@�����<�~�r��[�ש�ID��51'�Sp��P�V^�%��u
ްZ���;�����JH���ǠLM�����; �~�e���ҍ���4Qh��&�����������/t�en�0E.I�݀;S4�]�l�G�io�u�%8@8:�:�]g8*��~o�K���n����-"�9���C�V?�x�xO�����ܻ���þ��p�N�O��myz=0=H�������(�����K�n�R��>�.���
 ���@��Կ3==��5˘J\�/@Uk�+��`=���Q��~� U
���9=Vj�$�ΐ@�"��3wz�7Jj�ԭת�$��7�;�ѽ'��A�85~UM�sYqO�N���3�(R�;�Z�`����kbQp�Z��/�)�O�������&�v[��6��թZ��ָ�khY$���Z�,��zI�nб̗��,@�P����荁tC���90fb��� k�Rk�:SU�<�Q-�9k�jIޥ�R��[��k��W����2>`��t0��G�ɠ���3�&S�B�o)cpHv���hGܹw��0�TS���z.&;�&;��i��QH���=�s� �gz��C7.���EaX
��(6Q��(3#L�/i	5 ϥ=*L ᝅ<6:F�hF81ɥ"�Vb�
4��� &�M4���p�:�F�v�����L�m���}\Ww������ m�q�zBE��-j4
���(���jT׉���aQ)�"8�z�0��L��-dݽz
jĽ�t%�K�[Q���'ڥ��(�ƻ(@n�XMf��ٴ_ݑ-�z ���q��&�S��ud��`��~�~&�˶�Rr�E9���O��\.)���"j
2�e�>?%xbe��T�|��w(n����B��d3fO��rLd@��P�+���Z�SL�#Q�
����JkDJ~�����#�)�~���H0:�4{=ȶ|һ�#�1��ڗ(��`�	�=
`9;����$�lm2L&*q�H�1�#��5�|�3���%�3����#	�4Y���M��N�I�OVp!��P��ډ�OJ�[)�
W����i��x��*���XeH�Ҟ��"K�IAȵDX�{�f���״�	��B�p;�� 0d��&?� &�,O	�b�'��ڐ�L{δ7�:リ�;(�������;O��n-���!\oZ�Zk���봼sW.�#0�QRt� �gh�:���Q��Jʂ^dZ#W���˨�9�yq!�( �%,>$���������e��S�U��+څ�m���*Qj"�i6#2[��&��f��p._	e$HTS�����ҷYfሁn�:Ft�9FiB����8چ�me_M�e��.�\��.�;1:7�0c�q&h'�f��6�j�9S��ZaK̩��l��30�kWj���~J��ۛ��Y��ʪ�G�눮��%}��C3�쭔�c� V�^ +jO0�\Fg���i��oe�rw0N�����۟�&��؊�w����k0�Z�]���>�D��S�%),F���Ѽ�P.�%�T��?���x���{3����[�Q�׵�i�9@��r�i��8P�&�9� ����1EN��.��碦TB]"�I�ѴX�J~��A�M���S��$�5��m�����̈́~�\%�^�:F�����&�����D���:fNo�8JHMaRYΎC.D跖��o ^T�����y $�8YL���y�#c�u]-�B�lJ7��TI�TP���1RH �|�"f��Kp-���4+fQ��W�/�\R7<+ �,.�"�!�����K���{����p�
^#?Mm9�Ò Z)�|��+��[��܂����L�b�N&p��[��lԔ����ա/R�=��"�˝�#�*��Z����࠲^�c֊[nb�"�z�z-S�m�����X���N&���p�P�v<��Ń��pGǻ︁'n|o��˟]��۫�?\�����?]]����]�������?��[��l�R�� 3m����S`�Š�J�N�e�h\j�v�р��2{4����Z�{��,M}���Ӈ#���$0�c�FK�#%����
��tJ��4��ąF��f�Z�5����R�D
Ԏ"�8�^����Tx �'J)V�Z�*U,u`��F�[�$2�#s*��KzT�_>sQ�����2�C�I��R����c�B�S/eL>Q���"���꼂�i�J�Z��I���P?EKߏ�Ƭ���2UۯOԪ�����6�"���F�7dm��Zʋ��Q����#	�z���)GUbl���l7]G_�S���>,V��BI+�	H	��R�G.*�-E?�Մ|zGa1Z{(�C�7�
��8r�=�} ��Y‧%	;wA� R  e���T;U>�m�;,ȶ��Z	����j�����wf�`�,�����,����uX(�c�.G"�O�.� yO���W�?������\���/?�����U�b��Ə�.	�����J{�$��7���Яk?m�<������m�?_H��c	���K��۫˿��v���~GS�H=��u�%5��Ap_�L����N�/��O���w�L��	>Ã���pԏh�0å��RK�q)@�i��9���/
<�b�<ߠ+J''�p���J.�gZ�7����3kʡb|N�~!ׇ�{�������o�W�ԟ�u�jP�����dk���k31�'>��B||�:4B��E-|mNWM=��L]s��R�������.�%�a˱M\�r��x@�%��O,22�U9-����;�|K�2�;qg_1
��i�#�~N�����^m�ƻ+H�n������4N��.��v�~MGF`�$�i�簿ލ��~���g7�u�Cjm��`���Qr�4���Kc|��~����B�"���9rWC�v�E��[ȭ6��N}OX�
�Z��9�*��VQ�F���R=D�l\H�@��3a��	؊�n�S7 X��e�Y�ҢS�R#c7&�$�Sr)�aY>�6u�F����M��퓳[�uA!��N2��q�,��u���}ݤ�Ķ��ż���]5�}h��!�3:��Fv��p���<q�(�ql��-]_�W_/��Ecf"@�#�̳��Ke��=��{��m�>�:1e?�Ls�ߌ��h��m7�J��zPe^�D|��u���=Ϩ}QF7��7�]���Z�k:�;���_���Y�}gz�0f�]��4e��mMa����u3-��˲��$x=���ڦd,-���mQ��I���yX�_�M�H�M䥢�rx��%���pH�l-�-��.u[(J~�;O��ɨ.i�L����`b%m���dG6r��?Fp�V`=�f�3��drʺ����y|��k<Dh��hM�i�9��Y��̙W����]
^S n�K7��d��=S}�Č��52ks�����nxjcS���{MveM��Fso��a��qºܮđ�tTz�J%�d�7�$�K�9�D����n��H�޴?��-�r��uz���v�&�v�����(!�]l�TvKs1J1k�Tya�T6H8RD0}�Oo��I�pFF��no��ؿ(�Ҕ	����%���mS9Қ@[�W��6kPW��r�`{g��t�S�	X\�Rs�K�T1��BUQI��5pe�F{��yyO�Xiu]��n�7յ=oM�L�X������+s��@#�ua��8_Y��I)�ޤ��B�t�MHy�4�����OHʽ�$d�o�5�g�^�-{F�T;2�KW4�0�Tw�{-O�FeS�����Cp��a�Oj|��'�����Sf���w�>��ɽ�}��>��u�T�p7�����V��'���]ܳ9|l�RƸ}QΣ�$0����$���p�m�	��xƅS�&ˑ|��0�_�wcI�����}Q]��F&�5��\fxw���z��gHL����%��;�4���; c����!��㳸 f���S�+��:,�뺥��}!�΃��ζ��y�8}��X�)��𪬠R�X�NN,0g�8�s�v���i���km�O4ٷ���t�+���F�W�/�x��,�&��_��� �V؅���\sc��.��AJU�_�U6����k�8��8�����s�����ɖ!smj���e�(@6z=M=�$��u"L.87���� o�u�v����vɍ�l&�|�\(�]\-��kќZ����G��������CΣ �N�����k��Fddc����|�D���m����I8F8�kQ)�����:����)�T�+ڧ��� ׫�c���TN\���i6ӊ��v=�]�ֱ�܂�i0�����GMd�"P5}F:Į�m۸�U�Z��d�U��d�o5�n�˅�t��f�"��^"�%妰*˗�U�������hP׆ڛ���C�D}��u;G�7�-���8a�j�OJ���B/.�8d�7���<=a)*5uǁu0�F�uq)]ތK)�D2�͗�x�%� ���T�f|;�xQ�qe+h" kM�&oWB���~N�y�]0����>ʚWܛꎹ&�����;��h�z�5�Y��V����>Oeݷnb3j~[_�U*�l��sT��'>k���n(9��gK����nWA���o��(~)[�[� 4��:��,�+j޾mJ5���4����&�$�o�K{lk#ٔ/���y ;#����s�C�j�.�#�Hə�M+�;+$�}Qo2���:k�p�w}++����G;��yvo�V�m���*���8]D^p��'|���I_��xު6���ؖ#T���S6�u��?�����)�	�8�Bɒ�S,Uߩ�.��(�̥I��D^)�2<���S�����y�Zm3�6�@�9Qxv=t��,�næ�ST1m?��Zؽ��� שR˕��q����+,
Z�XWm*�h�`ɫ�$8z�}`3�K���*�o�f��"?]��n����2;����CL�j���Oi���������m�K��޾/� ��A�YOqW�l���^�C��$��{9.��J��c�R>w�mۆ4�H���d�jCP��5�}�xY��$��ޢ�N?����D��}Cj��<ϣ�N�{ �"r����r`�X#�H�A4(��D�����G��m>*ʧ��>�y���Q{[߮�>��3�w?朵�#�5IVӅ�����<�c$���Pt_�����Д�W0��Ya��_l"�)"���\��B�s��U��)J#Kf�� ��Z_
h�X�B�Lm�r��e���mW�W����Ϛ����P�W!�nǓ�H�3�}J�p�������s��X
�lF���]�҃��^�6�&e�������u+sɬs	�Hv��шu��W!�!��.N�#�4���9��39(��U���]�U\�ؖhu!w-C�5��X�M�ّxԹ�Q�^۪���W�$��{�0�g2����G��p���������ԙt����^��Z��d������� ���      .   N   x�3�t�I,Q04PU�OKS��S�K-WH���IM.���+�,�4202�5��52W0��22�2�г03�6��#����� �Nh      4      x������ � �         8  x���MN#1 D�5}�ُ@���qs��YͮY��QI�< |q���s�O_4�=�3����~H�~y�ץ�e��^/�zy�˫^�zy�K�~�W�>#��I}I�SRߒ�����&��I}M�kr_������&�5��)}M�k
��ה���5��)}M�kJ_��״�5�}M;x��״�5�}M{_��״�5}MG_���t�5�x_���t�5}MG_���t�5�}Mg_���t�����ξ�����k����������k�������@_���t�5;���4��f_��k�}M��im�k�}Mw_���t�5�}Mw_���t�5�}M7�K���/�� s ��00�s ��1�
�8��8�qB���	�'<|\ ��\���\ ��\���\ ��\���\ ��\���\ ��\���\ ��\���\ ��\���\ ��\���\ �]��] �]��] �$]��,] �4]��<] �D]��L] �T]��\] �d]��l] �t]��|] ��]���] ��]���] ��]���] ��]������������������������������������������MΣ���D:芜I'��ɩtr,��K'Ӂ�x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x���x{��x{��x{��x{��x{��x{��x{��x{��x{��x{��x{��x{��x{��x{��x{�M0�*r�tE��!���aȍ0�J��������������������������������y���|�����ϕ�sS+��*V�������O�������sK����K�������m���GؗB|y�em��kfm�7����ڶO�`׶�k~aԥ���؏��k۶��]         b   x�3�tL����t��QpLNN-.�4202�5��52W0��22�2��301�6��#�e�霟W\��ZgPf�1gpIbZ���(΀Ҥ��d(E�a1z\\\ ��F�            x������ � �            x������ � �            x������ � �      
     x�mNKk�@<��"��qWcV�kU,����	�4&]t{����\����Tp\���q��q敠��Jl����|�6�;�}�|�3�+��V�hj�R<D?@�}L{�<��r�.���7��OS@����NB��Z���H�q��44]�&���IN\k�mb�Vx.��`cV�������
��:'$bQ��Ec�#틷�b�ȏ�v��D���"R�.�XF��R-+�O*~D�7+��a��b@c���"I��wc�            x������ � �            x������ � �         �  x��XM��4=�_����~�l���&U��djYȅ�,il���H�L̉�����eyfIr����ؖ�ݯ_�n�����eL����旛��7o6�Won_^/l�_oŏ�/���iѵ�z�Fab�Ukcc����鄯~7*ٝ~+��wV[W��I~��zP)���V���������c~H��V��i��n��)&�������z%#�NH�[?8�xov�L��Z��X��:���2�]�n���yn:�9��g�5,E�t6�����
~y�iuY���W�6&��÷���Kv*�Έ=��gg���H��*���o5!FQ42s��'/:��(eb�-�8�e5eh��S��BЯ���02�{���J���[|w��`+UB�&+���(���J!%�`�Ц�EP0�'~B�N�&?C{3�����`�72R���`��A��j���a-��S��I��jC�4�PA�)D�dK���Л`E2�q���x�b�	%�����bZ��v��)������h��������$;���2%��werնx�<��q�����h�Z\���Mv#[�:�����2?�� \E�h"�_{�]X;Nֹ^���b6v�F��j�����*�Pߑ�.�=N-�X�������g��!;���.QY,#��G�^���3[*���	���1Z��x3������e"Rnl���-� 6�⥂�X&���)j6`�6��QX���xZ����Շߝ�Qm�ٷT���S�D���'
��@��*�5!b�F�'?��lN�� T�=y9�+��ض~.ݕ(Iz�5�PHY�η,������'1j�:VN��i?�L,5;F��ĕt1ݲI�g�E�{(��	�Z��������HT�C����R�7m�����N���X�=�T�ů�Q�WjxC�T� ���F��̼��������O��@7=�R���T	�����t�|`d	�Q:�p��8�����˩�ZG]��I��o}k}�IK-3nu��~<\%�����$�b�K�Ǥ��@r�a�a��O{SE�̢�'zGN �RdY��v'�XV�,6zbk�f�����G{50�6��co�D�!�]F,Q˰T�m�O���#��O��S���o�A]_m��,� l������`�8z0w��'��,Áݏd�PP	z�xen��J����e߷��2w	:�-0��g2�\�&���ҲeJNf�&�����r��zdp�Ĩ}>�㗮������̦���O�>}�J/*D�nl��龊��B�im�(蹂��Ôäa��@�Ў��_	&4,��:�[��֙|7�,��0 �鬵�U=  ���OM؁�d}���X�(�w��2"� �t?hM�d���e��� �+#Jml����z��ė�cԸ��y䛦.������1�]N�ȝ�6M�$��睥a�~�П�"F1��01c��I��X����|�c��1̺:�B���>�.G��t>tj��1�I��87���'7���L�
Y�+"] �v9�8<	�jE���e�΄�#���t�sY�CgOX�d]�옯]~ �ј;1�&>��|�7������a>+5�ל����b�r�@!��6�$��.�}�G�����`��W�*�7C� �RQ��Z�|�CL���N�g��:�[�3�a9�;6�����`ͷ�=P34E�nɖ�_�((1ϑ��&S���J����ɫ;��`���yGbBϡMj3��!٘T���Z���b�?
�ڀ�C�4�p��(D�pH�)9�h!~����'��B���[�d@���ɣ�G�(�	�TT���ByL(7�֯����G�����z�d&ٜ��В��/Y��N��29��i�
s3�v�>=_�/�gkqr��/V�O�^_L��,ON������ߜ��<Ƨ��<x����+         k   x�U��
�0ϛ��^"/���TiO�� ��*"�fG����v���@�n�G��f�:�����X� �< �n,Ǜ����v����H^J�[�ɱ��1�(|�            x�-�1� Egs�H+��P��aK�6Q�l�8A�:��?X�}���sY�2+��,�8豦"�iITͅ��_��i�ߟ�e��:�)�20XY�cd�1h���q�	�o���w��.�X$Q�0J��6"�            x������ � �            x������ � �         $  x�}�]k�0���_�wb89'IOr���7��.�7Z�ǰT[�����[u��BHy�'��2O�<;��\�So�6�b��q��>.�
���i�'�c;�c�p���4��F��7�}��\�&�����-�eZ&b-� #����c3�͊�z<İ��#xb	��o�꠪��ĸL��%��5M�� ��IuC{��BO(�o�a��U�tサ�.��'*��T�Rc��B��b=Xɨ���0���/8'*S'����b��	zJ{C^��ִ=�S�덑���1�A|(���      2      x������ � �      B   H   x�3202�5��52W0��22�2�г0�6��4�)c�iȅ]��F�N�x�K��if�S'D��3F��� Dq+W            x������ � �            x������ � �      0     x��X�nI}���g/��1��[��>����ƑeE+�a��	f�p�/��̧d�TW_`�Y�����!b�R]u���j�J�<���L>e2�&�LދL&�|��8�t3���i&�L�əZ�&BM�bXy�y��U�S�:8EY������� �W��į��#�!�z��ʗd�"��%,>�*2zO
eX991�-��	&�1��I?8����s2���|�
�+FNS��q��*�Pgh�L�c:O�N0�����nX�����8����=�+R �&�e�q��t�ϯt@�M+���(���O��|�܍a F ���C��G��&0��X�W*|���:��ᚯ��4��wM3&a���
��b�&\*؟"."�XӃ��w�6(���!����`G�!���bf���3��x�Ś�Cs�lX
��p��7���[2>v�O/m��Ѿ��Y~EK��%�a��O���ϹI���O��)G}�(�Pj��ZT����(a�Sou�Q�l�~���M����KQ�Qn���C2HY>�9g�t��n���F$8!�9����Ɔ}����#/�bj�KDY�a�	�橸p9eo�U��z��oX�f$��݅qt���W�$�|�p�pZ1n��g$���L*W��zWBC�f�B��{]T S���@�'���d������� ː��7�G>U,��X|������"Є�c,��kB0X;k����$�,�F��FUh׀[��뒧�H ��'�cW*�K�=ަ�3����|���&�B�_� fR�S�eg��M��>��?�!��$�W'�r'�_K���	�������[`�?+�Y�F�3�B*	Cj8����Gav�'
�j�&���c�ȕ�2t�2+-+����+no��H�v�ȑZ�ĶF����K��Pdҳ�f��(n)�/f���P�ҙpӯ]�-91���+�T$�����T6�F���(�o6ޔnޕ�Z�e��TbbVJ��S@��T��VKt35�(u�� ��`z�]E���T{^𪪲H�Z�
��9�T!���(�f�iŁH=�"��7�ݱ��*�� Eǀ��fE�L����tQP���t�^�{��S�&\����B��	/jb�xu�9�~�tw�T!n��X1�eo��d�6�.����P?�>E@�|������C'}h�סfߤ[���Z>TPc?�UT�x�f�*��4�Y���Wj�F��!@��z�.u�Kˡ؈��~�HgF�T\s�O`cj��1��������z3h6��Ni	i���HȈ��sMSR�:	)���֋�4ҭܤ[�)<�ڿ�RXZ�V�]����*,K�sY1�J��T��Zq���o${/���kƿ���,����N��v]1֦�b��A�\�QH(F             x������ � �      "      x������ � �      @      x������ � �      �   -  x���]K�@���_q�����睭�V��Ū��e�((����������&x@7��<���;�A��z�?( ����\�ge��)�Sv��l��A|Mb���������山V}�tq�?6������P��^�]����i[�����7�k56m��Z��-�Zm�l��a	[������K����6�k5����Z�H��Jž��b�վ�x%���U�i�յT��+kp�Y��-u~v}��IXew-ګϷ�nn�gS=�wZ����u�ԗ����2ծ�6o��n�Y�~�~P�>�묮�:u8��qd��<M���SH�i�r���,��0eC�H�0X/�� ڣ���C!����54�;���=��K��Ǥ��#���dpS��HBn�Tp���l�F�%~�1�좔>�9���;4!o�*�����A%r���8d'��9��=S��ŤG��ݴ�^&�'�h�u.���~y�86�[ѤS4s�H���nJY�Nү �	���w��wW��i�pZ^y�l���ϡ#	�P9j}(�Wt����6�6�C	%i6p,�[�m�i�Gd�9��݉$�X������N>4�#I"f�2�^����j^S�T�x������J��6S�&�u$Ix���2��y`��J<9��-�[%�i�%���l"��8��R.?A?2ے$�D���������"�4��j��:3�N�n���.o������Z����X�T�Qy��T��R��	�'Ur��ċ����r�,��.���TѱC{� �/�T�E�J���ԑ�����_:t#�      $      x������ � �     