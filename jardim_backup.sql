PGDMP                          y            pi    13.2 (Debian 13.2-1.pgdg100+1)    13.2 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    74024    pi    DATABASE     V   CREATE DATABASE pi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE pi;
                postgres    false                        2615    82300    jardim    SCHEMA        CREATE SCHEMA jardim;
    DROP SCHEMA jardim;
                postgres    false            �            1259    82325    flor    TABLE     �   CREATE TABLE jardim.flor (
    id_flor integer NOT NULL,
    nome character varying,
    quantidade integer,
    caracteristicas double precision[]
);
    DROP TABLE jardim.flor;
       jardim         heap    postgres    false    5            �            1259    82323    flor_id_flor_seq    SEQUENCE     �   CREATE SEQUENCE jardim.flor_id_flor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE jardim.flor_id_flor_seq;
       jardim          postgres    false    206    5            �           0    0    flor_id_flor_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE jardim.flor_id_flor_seq OWNED BY jardim.flor.id_flor;
          jardim          postgres    false    205            �            1259    82336    jardim    TABLE     �   CREATE TABLE jardim.jardim (
    id_jardim integer NOT NULL,
    id_jardim_info integer,
    id_localizacao integer,
    id_flor integer
);
    DROP TABLE jardim.jardim;
       jardim         heap    postgres    false    5            �            1259    82334    jardim_id_jardim_seq    SEQUENCE     �   CREATE SEQUENCE jardim.jardim_id_jardim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE jardim.jardim_id_jardim_seq;
       jardim          postgres    false    5    208            �           0    0    jardim_id_jardim_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE jardim.jardim_id_jardim_seq OWNED BY jardim.jardim.id_jardim;
          jardim          postgres    false    207            �            1259    82303    jardim_info    TABLE     �   CREATE TABLE jardim.jardim_info (
    id_jardim_info integer NOT NULL,
    nome character varying,
    telefone character varying,
    email character varying,
    site character varying
);
    DROP TABLE jardim.jardim_info;
       jardim         heap    postgres    false    5            �            1259    82301    jardim_info_id_jardim_info_seq    SEQUENCE     �   CREATE SEQUENCE jardim.jardim_info_id_jardim_info_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE jardim.jardim_info_id_jardim_info_seq;
       jardim          postgres    false    202    5            �           0    0    jardim_info_id_jardim_info_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE jardim.jardim_info_id_jardim_info_seq OWNED BY jardim.jardim_info.id_jardim_info;
          jardim          postgres    false    201            �            1259    82314    localizacao    TABLE     �   CREATE TABLE jardim.localizacao (
    id_localizacao integer NOT NULL,
    continente character varying,
    pais character varying,
    estado character varying,
    cidade character varying
);
    DROP TABLE jardim.localizacao;
       jardim         heap    postgres    false    5            �            1259    82312    localizacao_id_localizacao_seq    SEQUENCE     �   CREATE SEQUENCE jardim.localizacao_id_localizacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE jardim.localizacao_id_localizacao_seq;
       jardim          postgres    false    5    204            �           0    0    localizacao_id_localizacao_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE jardim.localizacao_id_localizacao_seq OWNED BY jardim.localizacao.id_localizacao;
          jardim          postgres    false    203                       2604    82328    flor id_flor    DEFAULT     l   ALTER TABLE ONLY jardim.flor ALTER COLUMN id_flor SET DEFAULT nextval('jardim.flor_id_flor_seq'::regclass);
 ;   ALTER TABLE jardim.flor ALTER COLUMN id_flor DROP DEFAULT;
       jardim          postgres    false    206    205    206                       2604    82339    jardim id_jardim    DEFAULT     t   ALTER TABLE ONLY jardim.jardim ALTER COLUMN id_jardim SET DEFAULT nextval('jardim.jardim_id_jardim_seq'::regclass);
 ?   ALTER TABLE jardim.jardim ALTER COLUMN id_jardim DROP DEFAULT;
       jardim          postgres    false    208    207    208            	           2604    82306    jardim_info id_jardim_info    DEFAULT     �   ALTER TABLE ONLY jardim.jardim_info ALTER COLUMN id_jardim_info SET DEFAULT nextval('jardim.jardim_info_id_jardim_info_seq'::regclass);
 I   ALTER TABLE jardim.jardim_info ALTER COLUMN id_jardim_info DROP DEFAULT;
       jardim          postgres    false    202    201    202            
           2604    82317    localizacao id_localizacao    DEFAULT     �   ALTER TABLE ONLY jardim.localizacao ALTER COLUMN id_localizacao SET DEFAULT nextval('jardim.localizacao_id_localizacao_seq'::regclass);
 I   ALTER TABLE jardim.localizacao ALTER COLUMN id_localizacao DROP DEFAULT;
       jardim          postgres    false    204    203    204            �          0    82325    flor 
   TABLE DATA           J   COPY jardim.flor (id_flor, nome, quantidade, caracteristicas) FROM stdin;
    jardim          postgres    false    206   '(       �          0    82336    jardim 
   TABLE DATA           T   COPY jardim.jardim (id_jardim, id_jardim_info, id_localizacao, id_flor) FROM stdin;
    jardim          postgres    false    208   �      �          0    82303    jardim_info 
   TABLE DATA           R   COPY jardim.jardim_info (id_jardim_info, nome, telefone, email, site) FROM stdin;
    jardim          postgres    false    202   k      �          0    82314    localizacao 
   TABLE DATA           W   COPY jardim.localizacao (id_localizacao, continente, pais, estado, cidade) FROM stdin;
    jardim          postgres    false    204   u
      �           0    0    flor_id_flor_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('jardim.flor_id_flor_seq', 30, true);
          jardim          postgres    false    205            �           0    0    jardim_id_jardim_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('jardim.jardim_id_jardim_seq', 30, true);
          jardim          postgres    false    207            �           0    0    jardim_info_id_jardim_info_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('jardim.jardim_info_id_jardim_info_seq', 30, true);
          jardim          postgres    false    201            �           0    0    localizacao_id_localizacao_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('jardim.localizacao_id_localizacao_seq', 30, true);
          jardim          postgres    false    203                       2606    82333    flor flor_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY jardim.flor
    ADD CONSTRAINT flor_pkey PRIMARY KEY (id_flor);
 8   ALTER TABLE ONLY jardim.flor DROP CONSTRAINT flor_pkey;
       jardim            postgres    false    206                       2606    82311    jardim_info jardim_info_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY jardim.jardim_info
    ADD CONSTRAINT jardim_info_pkey PRIMARY KEY (id_jardim_info);
 F   ALTER TABLE ONLY jardim.jardim_info DROP CONSTRAINT jardim_info_pkey;
       jardim            postgres    false    202                       2606    82341    jardim jardim_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY jardim.jardim
    ADD CONSTRAINT jardim_pkey PRIMARY KEY (id_jardim);
 <   ALTER TABLE ONLY jardim.jardim DROP CONSTRAINT jardim_pkey;
       jardim            postgres    false    208                       2606    82322    localizacao localizacao_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY jardim.localizacao
    ADD CONSTRAINT localizacao_pkey PRIMARY KEY (id_localizacao);
 F   ALTER TABLE ONLY jardim.localizacao DROP CONSTRAINT localizacao_pkey;
       jardim            postgres    false    204                       2606    82352    jardim fk_flor    FK CONSTRAINT     q   ALTER TABLE ONLY jardim.jardim
    ADD CONSTRAINT fk_flor FOREIGN KEY (id_flor) REFERENCES jardim.flor(id_flor);
 8   ALTER TABLE ONLY jardim.jardim DROP CONSTRAINT fk_flor;
       jardim          postgres    false    2834    208    206                       2606    82342    jardim fk_jardim_info    FK CONSTRAINT     �   ALTER TABLE ONLY jardim.jardim
    ADD CONSTRAINT fk_jardim_info FOREIGN KEY (id_jardim) REFERENCES jardim.jardim_info(id_jardim_info);
 ?   ALTER TABLE ONLY jardim.jardim DROP CONSTRAINT fk_jardim_info;
       jardim          postgres    false    2830    208    202                       2606    82347    jardim fk_localizacao    FK CONSTRAINT     �   ALTER TABLE ONLY jardim.jardim
    ADD CONSTRAINT fk_localizacao FOREIGN KEY (id_localizacao) REFERENCES jardim.localizacao(id_localizacao);
 ?   ALTER TABLE ONLY jardim.jardim DROP CONSTRAINT fk_localizacao;
       jardim          postgres    false    204    208    2832            �      x��ێt�r�y��Y�)�8G<Έ� (H$�B��>��{dy ��p�]լ��\�V�����y����?���ۿ��?����?������ֵ�>�>k��~闵���Zc���q�~Y�Y�<{������w��2{-��3����ԧ�g��Z٥�w��:�<g�3�·�VWy�^VG�zO^WZ�s�u殥��>�y�ѕ��Ŕ�7�{�Y����©�-�t}�.ЗR��/��m��������F����e9OmK�Q���Y\a�ŭ��v�xU-Ewe�������y�Uw?�y�St7�V�>g{�^������>�>y���=�qj�e���*�/l��~ZYs�}k����������W����CN_��Ǯ]�F7x�x�"�wz����e�K���)��N٭���ԇ�Q���������3���f�-/]_���/=[T/z��
{[ⅺJ�k�C����}��[��������V���]v^�X��ގVBk�b�r����Z���4���h܁U��=���"-�rt׽�����Z,����g���g?COPkb�h��B{+�+�\��R��ʪ��ykg�q��iei�m�/����Ӷްm���ê֨��6��a,ܦ=�urƞ�I�zƣ�]��z2z�C߫h�w}[�����Yo�i�<m���6���_�x�X}���>[���hqO��Q�U{_[#>Xw�峵/�<�x-��꜊Z*3��ҧoV����Z�is*���;m�%�����/|����죇7m����E�=V��
`��Z���_�����K۷FW���t��׻.X���W]��W��]5ʣ�8�*���{���lܵ��!���=�J.V�)m����_k�E�п�]����;~Y��ZK����2[Wh�fYh��e|�2�}q�ĥk����?�Ft�S{Jws�\R<H�9�Ol�~X��O�T�O.�����R1w=�.-u���}�����`���6�����6ԟ*D���n���OU�Ul����?�Z
�0�ã���}v�ׄ�� �W����6�TG��<y��'C�V�^��=�x����i�h��Ih�����E!��ο���#�JoW����>D�}�'��>��zh��M�5��:�bء�}P%l~��VDlU�u]|Ʀ�׺P$-l	gl%���2���Z�u�d� }�W�a�}��GP���m斞������
�
\D&�����P9���C�;��ms�L�vK��z�gt�����g�+$<za��tAg�N5���w�������`�[����;������'ν���y�Q,ŤƱ��ԁ�_*��V*a�B�=���t��贪��wσG�T)�����PǷ��Sr��X��3��C
�;[e�>(*yS���P�AGS�[O�o���JR�.<`oaHZQ�{�Ξ����Op~t�~T<2B�VD�����i)��?lğ�)�si�}x��lQ9���X��TR����"�� ����|9ڃJ�tk�r-+~��ԍ�ѯ����H�լ0��eM�����:S���c�r���Q�{0u���׳�yL\RgCi��)z�zţ�V��NǸ�n�r
nXS��Vd��Y\K�Ez}����K��y^ך�i�����Ե�9���P���/�N�b�Щ�=��+����z&��m�C�]��c�R�V����"���:�z��Zz�o��?%�|�QFm*:�F��7S���|��i���~�o0�j#�(%TRD��;9�ٽ�ST�h���5\�:����oSf�B�:X����q�跛�A'��W��:�/�-��!yW�2j�R���#��x�ÉAZ��F<ꝧp��ͭ�W:�)���{������yf����$�;#S�A��x��о�[*[h�q��L=�5�;�CdQ��h�3�V�I�B7�0��������yq�F�B���J�K+E�O�c?ĮY�]��DYP�u{���"d;t6�fՕ�� �SF�����)�PGm����?UA�'�Z�Q:r�mC;�!Y��
@�{����-�4ee��+K0E���ѧ(9�^�\'��#�M,����V)��36U_�i����a�fdڃ\Z	���@��T��a�7�p�k��XV��(��H5���>�+�؄�BL'w�3�uJ��:y���t�n�ڧ%3ևlSg�*l���3]�J42%]ʙ�M]�x�b�gu�vjM,E8v�N�'.G{R��Y�ɯN)�:�t�/vs�Z,, ���3��NP�3hq�H��kʖ��Z�x��;t.��|����K*����b�*����x�3:?�T����_�`}�M��d�³�*"�hc�r�E�B�ޜd�Y��������q^φ�ԡ��PG!�SSPRFE�P$�~=e*�z�F��"gW�#�k'��<�0,O"Ӡ���T����:�R8�YZ�Q%��;`j<���蜖�g�0��`���	�9�I�k��Zj䀏T�������R4�BL�V�swޝ���M��`�O�P G0	���b�ʭ�F@���9���$�7e���)"�ge����~��a'Sx<d�������G����o�7��C��!��c���7��C��!��c��1����C��!��c��1?�1���`��C��N����tK:���M���`�L�m.j����1����8��6��MNAc���Q�3�%���鴳Lgw} �� �3:\��M�mi�;J�<�=�Q�����RHu�M�XYJ��:U���s P����IK>Y�J^ �|ŵ��x!�����,L@%�������1�t&}���G�6yr�g*صt�^��{�Q���щ�����f��z UY�n���+!�".o���x@�Mq�Z��� �X]�{�ɇ�tP���^������ ���(%�Z1qwt���j�.�Z�liK�o��w�­�$=��
�����8�P��nc*Sԭ0"��Sv�媻��}�wCg:���y�~�a�Fʩ�pD��N�{Ge�k\�v��c9�u��Q�3�C��r���6
uT :].�	���цUx��U�y�B)�/�.��s�q���r}��qM�Z��v�;�t�~$%Q����Z���<ո��+�Jbp� �� �uֆJ���HޚA@��f��`�M�LK=�bY#����Tm~����+����Br�C�M��P���$�u���ʯ���~�L"a�?ܛ�D=���7�%;�f�X#:��ah��X�$7��@9z���+� �-�/����BäDW��T��_kV�2T@%��V2��֖��aq'�SZ�'��m���9(�)�����U����[�ƭ��i[d^���)�HOL��mT�9oD8�Z �I���2?�?�S��&�ꌍ<�2R�xK���I��� J�
>�U����D�[j����5o�Ս�6}n��_��Z�$P�E~$}@�pE��d�%�?�NJ�owT7o�r�-͂�Fn��Q)j=[�I��^��:�u7")Z�K�6*���'��X��A�Qh=wW��Ҍ���4'��x� |�L$����KwD9Q���(�6�R-Q
���.�y*4-p���_������Ž��~�_-գQL�Y #�}jm�_�V�����,wݭ��=m��M���Nv!�]��J=MpӞ�x�e��G��܆M���v��3�8��R!#
<.[��zy.���
J�L9�c��O:�]f�AFD܀h�蠰/�����=���{���P�(4�5��YJ�E��p��m��B)%�ᬰ:1��ґ��7�w���Hb+��J��7*tR/�E��= �Z�tD;����6�A@FK%kQt:��
��a_P�m5�28���vֽ�4|	>�����"�z�*@��`��'.����Q�W���~8D�M�	�j`2*= �@*i�?lϵ��|݃�n�!�ȍ��r=�FO&�4%j���:�+�%��\1�`[,a]�"O^��x_"%y0�G��_>D�V���9�i���n���FD�Wuwzs��v��X4����r��-̆R+b�Ӳn���K�qX�W'�����>��SMB�N�&{�z�    @���W��PWI*�k���Z��]�����w�]&��tTi�~f#Z��n7�kBT�[���pz��ʄ_wP�4���B �z�Rk}�x�@�*��U�����<0R�vN�TA��qVC�q��LU>�fW�p��P�x�+�9�]���FwV��XE`�eq�Q*�b�N7�*̇z��:o@e � ݺ�W���_�MF;z^��ʇ̑�#n,y='�{"��3��"��H�'���4�H�蟹�;���~9KIw^!f��T�%�[�[�����?PK�z�n�q�)��hE���J����9�^��:QA
�"W�dot#4=2��{)����LK�����C�A�[�O�7}��nێ$c���)�{�P_��N�Iļ9)M�������6�!�ѴQ������p�㷲o��)~�A�7�텮�k;���v�:Rߨ"�20�=�Z"�W�翢�R�O
Oa��賠/���V�mu��>���z�^����������	 l~8�H�>�9m�
0��Q�<�at[u-�M�U��'�	�
YW�MZ���.Eߝ��Bktio�����=�\4w?k��%U��0���/���Ye���r�J��&ۍ;�ݢ��L�p0(�h��,�p���5��Q�)�:9�;�L�?%K���(��`�Ҙ2|���?p��-���ڽ��UT���^֜� E���g-"X��N	T^��X� �.jM�����X����>�t��.�'���>�ί�e��J~0��.���p��s��j`�?����_����o����������s	��6!U=O)�؆�ǹ���>�>��uي0%�"������ ����%�Lu�(��u���B�WQ��o����nPl�C=�E��c|J}��f�0Yn���Z�Q DX��FrLl-/]�v�����~~oʊ���ѕ-�N"v�u�A�A�6!���+�e����Ѱ���P���S��I��O!��E��U�[6�鬶)J��%��[L(u|�g��I��G�@Yl�ܮ���R������J����@�)]���ޡ��f��6%E)�N
ڄ綺t*��9�s�FOtbj>z2�L\Ijc��{T�*(�'�x�j6�}t�b�"R��/���Z��$t �u�,����W�;�)�S��uk��	4��h�M|��:k�fD<2G�J��q�"KԂ��^n[U�[���X��>�&/�y>d�L�n���6�n�徯0���>a�\2�CCB��v�Vj�Yx�	��w��w��	,W�y\}h%�������M1����@�d%������b�<��}P��L��~�����d�Y�!k�_��XM{�خ�nA3��T�D���k�bḋ].BKLRNA��䓡2�E�2E��~�7�-�#���?�.u��J;Eo���:��4��`4I���T?ϋcT&OWH�D4�5Gj�:��/���J_O����� �uRk-���yܵPj[�����:��N�D�c����_K�R5|#�?�~�ۛ}�1����-f��_�<:�Ƣ\XO�Q�6}7S�H����s�����a��.=��n n�8q2�sh��A3�}IἚ��Aе@Cx_ӒB�H�s�r�R�(�)��Tq\���⒙�_�K�%��v_S�}%�t��]`�{�"!@�y'`
E5���W��N�J�^�P���-���h�����_�M��0I�e|G�|#7�#��Nߺ5	��}Ȇ?�FK��
!
߻�D%��b�)�෗PBm֝�޵���M%��C�燫)�̔*��f��&+L�Q�l��p2���cu]hWf���*uщ\ ���<��@u���#���>�������#G��Sp��ݙp<��k{l����ǯ;߼���;y$���3N7��j?��&/M0-���Saqis<�1��?��!�����Y�����J�Ok���-%������5~�k�FЯ9��V͆���w�	gn��#����#i��6�6m?~�F����eR�o�J�KP´�9���XP�o ���z8�9i��g��_���H�F�_��?���-D,�1��/QC�����m��|x��<j���T	*�ݣ����~J�uT���L����QS]��~=����n�1���N�Ż�mh�����o]	7 �cvE�"՚�%��-�xrO�n�o�Q
��hPV1;&��~+���Ni����p@��Rlϥ%}`�"VQ��bӒv\��D��QiA*-�ԯ�T��E	�R�:>Ԩ��J���5�A.`�0~_{����,'�WB��^= e�I��lB�8P�r��e�b�dY�n�D��ec�^1�m�D�0�#~`�+g�k}\j��)ۆ��z��H%SM)�"릀��}j&LzX�p_�O��:��AI��la!h�@v@Z�H~A���vr�GBJmY�N�M0����0��	�N!����x�Gҿ�%ѣ�H�2K\T�T���қ�㯬���c�=�Pw#�w�^����s|�<�����z[��6�����W��t�b���	�g����5�?:�"��)��bD��Y�+���e���Ά�C�^�eF
�	�.:!��{6�7֩j:H�v�\K�!�ڱ�:\��9�n��BS�P�EI��+UYf��� �����r��62���Eˇu�
Lw Z8�t2?��Ŕ��P��ҲЩ��=nR�+���׺�.�VHӝvX޹��N�	%�o�xӭF�U�n}��z���W�A�(�'}�K�ɚ@Ӂ�W ���~otc�޴T�������z�=R��4� J�������͉�JCXair_x�JLU�|�܅�uQ��T��@RͦD���|�o�xݿ~_ |��f�Ϛ��D+�����o��_�����Ե���RLNSڛ�m �@!��/��;�e[�ǚv���Fc��]^0��q���?׺!�"��m��m\����z�'�
�eaSZ�Z�A���h��fu#D�ym��'{�en�둕�p��������+�%�C� �X�	U��k�:�S�|U��Db �����ѫC� z�����Bb���yl�E��N��[E?a����?r�JW@ّE�	 $�x�������FF�����=ȫ�og��\�D^�*��z."��!��7��^%)J$�9��v3y'HuC�����1/Y�Ÿ�^�ȴn$�50rd���+*8�Lϧֿ����W� y7��a��
!Wds��yHȊ�?�eI0 ��w�����5��(jO�P����Ҹկ ����lA8�pd� �d<J��f`Ә�����#�K�rV���>A3�N�����ˌj	Z>�?Z()*�K��(�E�8���a���3|JN~(�f��֑G�E"��<XR7H�a.J�2?�=`���?�e�n�
g^ n�Ӣy�{{��G�	�3��s��ꃗ�͞
z�Z���C�A��g�mq��n�A7�Y­xL�R�2�o�n b4u����hD�J��/�R�*���}a;Ķ7�'zM\{<`� y�d�ED��b;O��b�"�$7J%N��q�%�k�
El��9�\}�^���y�Ο�:uP'��c�q�2�sr�,�V�H ]F�� R��a��(E�����{���I�C�z�k�W��S+��������-I�R�b�(@����Ej@���g�M1\�KQe����+X����Y��P那���>��J;G�=4�)x�=�d���KH�j��&tT�n��C�����$ьB�Z��'�ݜK�M�f@�P��F~39(���xA���a�8_�.��ve�1�!��q(��� �L�J|�S:�[�	�\RBh�V�6���錳E�Vk�7�E�ƀh�]uS�!��f|��$U48t1�	�RT_��ݽ��M�Ȯo4��h�	Â"��c�@nl�z��-^ ��U�Yߙ�`��f�+�P�ƛ[��<'�Y�FotS����/P:M���$��
:��D:��d�#-I�B�;p%0�/run�|��TJKz�QO�)�Er��p'� ��fY��D��-�t@�    H�c�NG���ח��A��$��v�a�g�8�.�B,�
��Z�G�X�0�F(| �d���N�觼4H!����J4�;m�|E�>\V�T�/��B�pf���hLꉛ
N�[�1s�j,�F-'x��G&�~�co��lP�wj߇��|�~��r�����k6�2UD��N_ILr��ٶ"�rgG������RΥ�}ܜ��Ƶ�w��,��}{O��1dГ&�'�HLn#�(�U�}B�(>�?�>y^A>0��1��u���K�B��03�6���t��~�C��&�iɿ�g_t0��
�����'���%���R�\g!{ca=~�ȵQ��nHZ�{���ד�y���q�=�2*5��f�K^_��_�Qp����(��aF�څ�bZP��_�|+�$h�sV=��l�i
��h����� M�ǔ7��!��7܋b>ăs\���=�����hú�n���:� ��b�#ԇ~L�-������˿"Dd��TO���D����V%��/�Yo�5i@�%��p���5�F[n�; g�\���¼����ۅ ���&r�p>��f��-Q��&ے�*<q�+
+ܨ8&(B��f�C����%�����>�6��m 7|����*`�.&Nk����r!��&#S�A]:7+p�V�?Z���4���:�O6^-
�W�&�;�?��U]����n�l�U�5��QJ��>_�$YR=�_�XI��q���?�?������������?`�W�cN�uM�y�O�n�5\`����5�M����Q�;8���b.��z�M�n�ׁ�F��2���؍͡ԉ6qpSq����GM�r�� �]Vy��Avg���uZ�eM�U]n���,qƺۊ���JߊvP�S��|2��tt���C7�w�7��+�^�7hR�Rg�d1�
EeԊ��q-|Ũ�����O!%��cd���~�:@�dٝ��9�@k�-D�Ô�9�G&h�\_
.̔�UⶓZt�E%���_ʲ��d%�9HT����TQ�#�}�z�b�v���$j�L��_i�h�+
��v#K���G���/􋎛�>O~Y�d�X�;C/�i4���~6�9h���Q�((.�#�����Kh�6��]��
�@Ly��g�:j�`U�5�é"�@@�6���������Z��+�ith��e���Q���UR@@��ѰA`���d��X�8�G��r$	�Чg�H��~Nק��
��_!�y�jB�~ &��`�hI��}��qQt|�V_������9g#]�߈Xg�π4^��(�x�Bi{u��?��#K�0i3�P�Ԕ����]�`��VI�ÃpR��4�Kh��x����N��V�2��]��?��'Q��y=#��gA���+߯ ���>v�����sd�u�E�ҁc�<�7g��@�Y�7#}�Xe"{�Mb�I��O�\��-K�j��?%\~�8f�0���n܌�&�Ut� �����i�m�y]�j3� �D?}���
���BЯ/)&(�� �|u]����l�@��+8Zm
[��?c���<����J�����	�	ܗ.���f�"­�ש��<?�����E`1�@�����C�M����Y���e�VHQT�����G�z`��R�.�H��;?�� WX�!�}�����`Qm��A���F��`�F�����<k���X|���W,�XÖ?�)���tx��G��}7�pm�H�_���*�h��O_��@�#�YJZ�t�h��.[��U�����'����h[G���[�(J���s������fO�>�l%��h�]`��C�	�|_�݁}���|~�a2-t�����q�����W��XCh�g��w8�YH�����5����ʶ��lǾ-��D[,I`&�o=�U.`��}�&�0�8��Ȣ`)�n�;HD6ɐΤ�Vb���ڷ��Xg����Q���nlv��`#�(��f�Y$~>��٘ t��O���r�9�-Ш$It!�n?>,C�!+w X@� ;5����<��5́ƞ!�'�`ƜZ����2,}��k8d��9�{O�y�&9��G����WO@2�A�̈́�6����XkE�+*э����7�!�
��(�/��?�i(Dap<���<�d�����m�Z�C�dC��p���&5��8��"95�Om�a�_4E-K;v!�����Bw9A�z�g��'l����܌�����p�q'�q�0CŲ��N�eT�s��4&s�Ifs��ru�e��{ �d⨭��ɜ�w���эް�%���.����z�U܀��BtV�uBB��s<�S�	�ܗ�V�Vi#����y���vh�æp��`}Jr)ͺ�NNMON��vA�!�'��N��� ��P�/��Q��� dcgL������V�a�2hS�����Cד��d���+'z7�VWv�zN֠Lq
>�i��>��E���[_ʲ�)��T����~��T�=�AU��R(E @�Z�/ ��jj�'�"P�8E�rN� *C��+���~�c���ߺ��橻~ش�ѱ������X�s�d��7>�M�b����M#�a�ؕoL��O��K �.��󨮠���޸AH��&X�:���5?V��"*�1�5�%���e(�`G��� ����bl��{m@�8I��\%JZ���9O��ƶ��]�ߤ��c�5J�'}������$�z+6��Q�H(&oں���~c�Fӱ7{=��pj�uX}�B��W4|�@�KC�.,6�uRb�d�:�UJ�m�Vr�����?� �#�&n;��r5�d��c/��j�fc�u�O�鐔蹯�ҧ��,�Ʒ|��E0*��z��O6�wx4������	
�p�g��� pЃ�Mg9i�0m*d^�s�eH���a�M|H*�>_�"틑 ��'{8�{vJek'��0�p 3C�@� ��O����d[�u��8C��0�F���ÂGx�/� �n|�+�T3Sa�3؃e���H���}��5��~9H^�T�c�(����/��W���@t�H�;Gj��'ݘ���}-A��6ڸ��aIЉ�D�ˠYhMĀ����M�q�O��!A�h�N,ΰ" {O�s{S��Q�X�������yg�'Tc��b�z ��_����%"�� �pVj;�����m��o��q���l�F��-m҂u�� 	o��F�.Y�)L��*d�dp`vA���4gRQ��Y3�l�G���2d�� -�pC)�ex ���us���6"�i��ӯ�!>�c.Pc��V(PO��e�� k��e���v�rGĚ�gJ�!���߇�!���� _wf��i�q]Pu2�ӊ�ق����r�|����D4��pצ�Ǿ-�m��	��s~�S �T�2�,�b��Py�!׷J��,O�>�ްs�S]e�Y)ՙU`�̟C��Nf�uȆ�����=�yn8 {U+���o쵁��\��w�;O�\���Ul���c4T�eV+lZ���Xȵ���k]� pg�q��3HV�l;�$1�dd}F`vW�9��p(n
mt53�d�tMp+c쒓0Fw!t��w�:e ;�L�C7�c̟��/�P&��Y�,9?�����0����Ag� 1Q�wo�2p��� ���s°��^";n hV#���1�Nʉ�7�+�L�u6�) NzT�pZ�s�lV��?~�:{Y[�$��(h��0��Y����Ϸ��e㉉�ە��@^ԙ�h��	�m:�*&�@7=��p�X�Ph
'=�b��󤛒���ٞ�Q,�q|�W����#�k�c������� 0i�04����ً��R~r����`h/�.�&E+<��G���g��qu�-������ow�����,Xd��*Q�Xfz�����Yf�K�誛�
"p�}�ҋ;��Z�0��޾W��Rq$�䥻^jl:�t\esb��ȁ4.��\��Cg:��\U����FFd(�2�&�V��'�� ���5�rH 1h�3�௩���    ��ǝy�/�n&5Ⱥ7<��]Mdĭ1g7xr���8Ò���#�Hx@{�U�GhC�04U�O'���@�7--Վ�9T��᥃�>�@�3��|��߆~���C�W� [���t��o��T7Á|�>α�9y2�Q��(����=����S/���N���y�5S�mS��|����G�z��oyL�F��?���N36���U,.f1捲���s[��L�PH-��SL{�'����> T�P+���b���5U�I�@���=8:��3b���cC��w�Y+����;es���G��a>�-�r�$�$�{@Zp��C{/����AY��n���62uK�B�m߿{�c	�-��tN��}l�O�Ã����Z������7G�Kw0���D������g)_H�<l�q3�4"h2+�_Pm��8o�n���F����lT��o��ʴa�P��	��-��u'7B=��&v9�x� �9�,w��?`�_�_�p�mD�-oz:@�.P�	���Q�����`�O3��c �h���i���$I��$_Z�3'94��i���<����.��	����h�sXs�)�n�U,,#��+��.�����b����>��7=v[g iP��	��r�;��Ʈ���F�GKw%|0��z빠�O�V;�Y�N�+n[�u��s�Jrec�������᮹M�n�[V�)������,$�#���ߺ[��):ɩ������O<>�7��Mz.Ig3Cղ��֚>!�?`�ԀX�/�d�%�f�B�X�ݧ:-�zn3�:�~>��pD�'��8��^YW�����]�C��P4B+��7m��-�t��W�;��!�C[y�O�A���$�@�Jd7b6 `�yxI	������oc�"x�i̿`Ɗ@�z�$py�-�5��8:�=���7J�sz���[;u�В����V��z���j
� �<�sq2���t��4p^ZyE>Ø��vz0r�V_;t��˓��ߘ~с7�3�!|y0�����$�C�L��d�yM{��h�(��7Ts��0&+��Nɋ{������>�ط����-JD��N�TI[hSSB�tr0D1�X���O`��;���Sz�B���yO<��_"h����o�7�&�:��%�U�o��F��^�h��Q��6Y�I�ٝ��/[Ϳ���K�	E���K�9?��0wea8z��3��,5�1�
�h�Iz�2(��ӥ�����-�s�.s�@��%B��@}8=�$�����|��\��6��ή�e�\�1=dL�>�L�߫�b
�H����^)�W��gV�u��1���4˺�`Da��g�}�h^�z�xVSoP]�����
��r[ ���e.=��� ���M�\�1��ո`�U`t޷��.K�)�L:�z�jA�dFݸ�x1�l�cL��N*�U�g��э��Vv^�;qE�)Bh_Mc]���9?f�0X�d����a��&�-�r����A�dFɱ�̟�(�H֘t�y^.�	�b�8bnE�錜�5�p&]`�|5F�`�b&1���4���	̂OMf�2�F� �C�lׅa��ͧ�����}=�8{/GvD�Q�bD�{�'�%�RG{�lO3w `H�qP�n H$$f��ۆA��n�x�s������_��9��/|��-7���Cz�F�w(�]������Ej��0��YV��s��"��19�7���f��m#�iE��U�F��G�u���-N�J;6N�~ŗ��i|�����,�#���h�7��J�ƛ��<1س�>�a>֖u
Ĥ�JV�p:*_�n����f(��p�]�FO��
�?�׵�M�bv��6��^�܄Ek��qxڽ���Qb�0�L@V�GtJ�JF�j��E��ffn͑_Mj������m����u�\h�c\j��1j�y2ػ �T���p����F��i���
Fr��%�d)d�F��i3F�B��q^�p�ۏ�*���o����8A^*:�z�L�Z�=�H�8��۔ܾL�r&��T���H9�z� ,�P�(d��
%�x�\qƌr�� �;SQ��T&�>+:�����ܔ�KiP>`v�_3O�N<� ��W`�{�t�G���b�ND��_�4}"2w���z�������w~��:�\=��������흶�m5�`�/N{���6��|�]�v����U��(�}�}A��q�4 
os�0W�&
�*0{K�ۏ�a���F�0&���~��/K�+�3��O�w�s���9/�1�����k&#$dt�!9�#�%���G�W;�v��'��y�'>�7�?X7[�K'	�
�FN/;k�Th���3cS���l���m�%@2I���s6���b�����}&p�_���y�5R#`7|qE)�kb�L�0�����VILT~Y������4�e}��0h�ԫj�c�^����n;?0�����I	�������� ������bNd5�sT�q�Dr�ߎ���ls��������q��u" �HӘ+�:��f��s�߰�����Y@�=�=�;�4\u�m,�W�ѥ���ٰ���/���a������Ţ�m�4�%�45}��F`���`���t�7�� <�2_����Ϻ�P�@������:�5�g���������������?|,��c}YM�{��ݷ3��c)&-���)�~+jZ�m��1�0�3+|�
�g����~����"T��f���Yj�Uy\�\B���� ���Y$���r��3/
��]ŰX� GrB�'��ܳ�[O��������'�B��2�c������Ҭk2c*j���,��Q^FF��`({D��;ŋėv%��������HN�$J0��%��}V�/&V>ɀ��BAZT�U���f2��ι�'��E�Y��$����p��ꃽ�+�Ix�|�ci;M��^�:�<�"��pci]l���#���q��l��A��67/�\E�!c���ԯ��`�د���|��$�������$w0c��\�Z�b@����A�1E��tj=��´ ������Hv�ژ.�UIP�1�; -��Έ�}yǹP(?�6�T}��-����6�����l���ֆ��$�eW��$�ߒ��η휃ǅ��\P�4�E�q�ӓ=��J��v� ��|*oX��X5�)�`�'�!+&�),���p�dt�+����yQԦ��"���I/�
Du@�'gB��-�#��It:�\���^��.��:/}�"3��g��;�l�r�=�Nݶ��`��^і1�Ho�W\S�M1@0P^��:%�=Á��>(�㤡�L���`JC����~��#'i�=sg�����jp�u�!)7�EC�p�i����wfKϋ8�@�*�jо<�=��6	�Y¡6"�Bz���D`m�u�\���ú� j �m^��R͂XT�8����Ϫ=����-��[�>T�b��5�l�b�1cYqU(A��0ޝ�Z�P�)�{z�\
�M�d��J~���c�E'����,(��J�cDrD^��X$�}�a����=5��h�re��y�����:�D�
�~�/z�J���g���X�݉����(
�?�k��xW�8B�]�K��D�V��%��XZ0�ϾC��K�zS�?M�h`�݄�f�3�U���U�a���\�9}�:�u<��H�t֝
0�!-�"�m�z��pM:t�_���k�vˆx=��ih�y�Ő�O�Q�ה��
 ��r1�*���U�����r
-Oߘa���;��d@[����	Y�-�y�b��k4_J������G�V��(7�CXI�A��}�v�$��v��q��sp�}�I2���:}C5a:�5�������{���jO�������r��3�#g7Q��w�M�(==�	���/�S�_�G��wU�$���^P�����{�[.��uZ�`��    �4��q�{\}� ���[��P[�@���P������~�<\��~������H�P���),I1qq�=DŞ��=ǆ~�����~�Dx�im�}�`S�)��S����X������qC��(-��C��{�� 5
\ڵ���p��)�)�7D��8@���:NTvۖ���^vyJH���~�+f (
�q��/m���#BH�x���I�����Y�s�����J��*�1<�1 ��I�YL:<]n&�m#[��t���hQ᳊�Ι�bq�2	�ye����
9ɸ�7��M2�SL}�伿id�v�QePE�*@IqFj����y�u��+�LQf�A=saVE��P��*���A�D��!�i(
�~�������L�$�z���`O~?��H���(�N`�G��Ɂ4�HpKTN��/@�	���V�Y6�����5��9n2��&�<@UK�����\���_�¥c� �2&�PrB�mK�C�cf.`r����Ր��&�QF��nl3��jG�W�cE)c�����%u��!����x�meH�vp�f�j�����TD���=��E:aQq�š���2��Ĥ;8���B��`���ҭ��U&CG���­D����W(�X��q9�M4�K��M'm���ݩ�g����c���<�VM��@ ���ڪ����u����Sq��H0[�m�XJ6w�'�d��qk�[�i(���.�2�5=��N��9�aK�� �Kr�]n6k���-*Sc9�7�B +��rb��穀A�X��t��>ރ�3'
_���h�Y���χZ��de�����;d��}�"�x&�I䪽�ha¼�eP;��2K�A���du	&�s�6�ﺙcEh����r��e�Q��a�iW(Ht��|M���f�2�N�'�*(�\�;4oh6�,�kQmi��*��7��z]���W���@G�D#��Gn�ȳ^(9��㤮�fb
�غ��AI�y��Q(� �������4������X~�2hh+'L���)h|�is,�y2@z\iUn�s�T��r��?����#IAr��@DV81�"��Y�f��t>�I4���_,gi>G�ID��6��a�C����)��1eݡp�	�n5���/m쉩�c�7K��?�ňB��h���_��K;a[>#��u}O�!�(N����ۢ���ǘFC�*�gV��:���[=q�!eF� ՞.�f��jN!�ě�:5�����c��8@�^Ā���1��b�h^&+��0D���0	�#��%k��@�M��BR�1�%���b��
4x�s��)���~d��LOQW�Ш�
�a��/� 4R�X�QPh#��:-��w gX�%��٘d!�w�dˈ>�� "���d&��Av�����)��ql��X	X*���~�?l�	$N��G�£p	�u&�{�EA�22�?����:�u=���=Vs�<����Z8��R`����z��9�5� ���B�il���{�[ ���nSYBu��g ���J)�~�e�k�o;�UjFܔ�A2:GU�$��
,pr�F�<�gh���ꈔ^�G�B=�u���X�(��v0�]�X���o&�,
A������H:S2�=����^F����"W3�'ѐu�#�e$uI�k�M8���o�uˮ�<h�-GL�R �x�������'�s�~ L�j�웾�ŭϙF�o�d��Ζ�h$W��Q7��?�c�O�@,�E���s��L�s�Pl���O�[<�L(��Ŷ!~z�ϗ��&2O>$�{�����W�M��-Z����٪,�1���V�4��p���f�k�Zh�>t(�A���p��8�o�iS�_��1�1�ˆY,MH*畯S&\K��r+x@N��4�S'x~ ��y��G�K�{�m P�t��3��Z�p~L{�1^��W�d{$�Ͼ�����7��~�������ߓ��Tw%���H��k��!,��9m��88X_�åB��P�p��{��n�70����0V�{Ư���cf�|>?)�h�s�Q1؋8���>�9�J���4�]V(Ѵ�ugϴ#�S�/����P�A��t�~��c�5��z�l<j�bPM-o�y�o(���T�/�Mx/a�R��+;��è����>�Lw�8�r���y��xC+T�$��˯a��"Oy������E ���/�8�9e4_
lf9l6V"um�GL"[��J,�0�p��r�����vQ�0�v=�\0�QX�����qE���ٰ��M�̹�������1�cLH�L5\߆%�����>K\���0��/����N*����{���1���8Gڶ0��z�K�W<���ZY�s��4x������@i�L����
�!%xS�����F��ה�0�����܍n�ޗ�{�g�`�`�?�U�k�iP�L������%?o��K�jh�N�x�@��-��/�Bd�ŕ)�g�G�]=�-�9���3bW��|2��T�bZ}u�/�9�"�@p��+��;H�� ~�c�\{iU�G ShR�q��R�hN/����H��%�8!1Tn$�,LE���y
4�so�a���iC�l�Ʌ��be�4��ӫ�����]e]T��q]�R�������������Q�r8B�dJ�I۲���'�{�U��X �m���Ta��G�������lZ�s�0"���`�n���к��I��	\8mrk�W`��ضx������z�������qV���񅼲,��+�Q˿���8d�yji (y�6>�2��1)��U�&@�UK����U@gZⰑ=l,{��<�L/ķ��qd� Ӑ��נ��Q��_U<2hR4D\�(����a�!|G��o�Xq	�-}�Nb�kV|�Խg��=R �%�{^����]-�^��3U{b��R{v9Q��G�	l,}琤@���ȭ��e�lg�̊�dV|�}��IC��FQ�3�/��]�		���y�Jr�ll����5OAd�w:up��츌��o��dΓ�&k��$��3�N{S҅�=��6�s�£�(��er��k���uB:���v�[q(��]$��R�?r�׃���s��H��$�����D-���#C�0�*w��^��A�Z&�@�?k9��-
��kjU��~~X:���Ƙ�a;x��u��=4N�7;�') m6c@D��4���)�ٓ��CF�c�����M���K����Z�Vll�*L0u���K+��?�7x�qs�S04��>��Z*�̨�(��I7�(b���^�}�,��!�m��-pQh75nv��`�.��T���DQ�ɱ����e�>�:#&��r#,��aCg�� 	L}5e4D�hi��V����Ya�V�@��n>�<��N,�<���(�;���FF���E�Q�o4���`w0�	^G�5f�Q��1tW'-�$�N��"�|��@{bH<c�p�{mA�w�5��鹵u]���)�]���
�֔� ��/r "�k�$n���u��6�6n�'OU�4to<x;x�b���i���nԨʙ�]��6��+N����][�'���x,��4����2�����@��o�St��;�
�LX������l�22J���r�03�e����S��f��/�W����ҥHu{��>exޞ��&uk^�]�ĕm����z�� �J���M�mt�z�!�Ю#J���O0��y�%
���z���*��!*�l�8��������h;x�{ϕAp�N�傄x�v#��86�"0`t蠋32��ۛ��A�&��3U.|�=w(	Wc�y����\�pؓF~�+���T|f�V��/����^�)�Ô��f�0����w@GR�r�>��6$.Q#34�D�F:+9O�n�P�q���F���i��͌�U�y�u�~1V�I��(��I�S�:}_6Z1��=@�̀*j�|���;Dqy��7>u��yR�ݲ�� ��؞֏��0�r��w��~�4$p��w~=s���?�-~��    <���Q��g����T��7F3,�q�$�o��Y�4f�����Sf���9�f�1�h�ߧ�c�l�3M���phc��#���Y�ru�Ȕ��#���L���.N����7Jf�4���b���or�x�Q�����,��y�+�M���M"E���lN��:O��`ft�w԰�&�`h1�LŴk>��}�S��ql��+�2����Ʋ���f�H��%�;�n��mW0�Iy���E�W�(�Y�~<�3��]17hU�fC���abhb��P/~���p�_Y9���|�|��}a\53=���w:��/��W�Z�����{p�@t�{z�;�oD%��K`���U�y�N���@�ȭ>@h�1�0/ �9 j�Iߵp���@�V��D.c��vE�*ż����9�+����OB��'�[�����j4��C4ӭb����0���f �I}��M��\Ol p�t��;#�ӡ�0k�PLN��9f�`���w�u�4�l����f�\̬���s�\��� ���׼�� (��pa�Oj�s�O�a���l26K`?I�)2G�>&2ѡ�=��8|��5�F�A�y(#,���a����X��<i4?��[�Z����x��,7���n�N2#�A������L�n:X!�������6�ɟ����l L�a]0F��[N:���k'`-��t�
)��E0��YA���ѱhOL;�​ɗj6}�=�z��i��pI��Sr�[m{qL&�����Y��G��FúL���k����T�s�����V�\������]����o�2�
op%�A���/l�na��1����b�A�ֽ`3^؊f8����P�4����lw%s1�\��٬g�#٩k�������4�2�Ik��S�3x���z<֚����'��T���"�.0}KP���Dn�<�s�B�n��֙m57̤��V�K�j�c�w��
��P��%HA���3�I��K�|R|I��u���kjM!�b`
U�ʳ}J��%p�pa��qYj���y�Z�9�jf��t1]���h��Q߰Uc:��X�cAwËa��ÙhR� +�������R`Kg@͋v��LG�7�mP��m�9&ݮ,c�9B�!�t塝'�Mƻ�tQEi����Ms���0��2ѧs����)��6��Wd���0=��{a 7��Q���p��@����;o$!tN�Ĳg���������>��3r�������ٗ�O"���+	�+��8�'��{�҃r��ׅ���pO6?=�|�]k�JT�.!��_�,��ǓP�q���iZ+��@�����gG�7Fx@ل.��v1�#���Z�,ޥa�|���F\��Y��a��x�<�����\��V��L���B�?��ݱ��ȝ4�B��M�"B&�����ǏEtA���njˠIx@��*��u���om:��A�&f��(��#�����{�
	G���0V����t�����j��b@VX�5���0 nq��q�ZܖG2]�I�鷚������h��,�`R$��N��0��fR;G�P��}>I�)F/q�����Y����b4tY���ů8�n�����'�(0I���"�E;0�۸Z�(����|�����s���N����'�Ttq���1~���2����!�QFr��B>2w}<2����?��3t̀o�'az�=��g�K�Ќ�*�\�nN&j\�"�D|�e��dB+��.O:���@�CC��T�
"2�M^bDX�0�'�uϫ���eU��5P��B2ٳܬ�mp�}y�yT=%f�EJ��\Cs?�%��%� ����b$Ӥ�+��j7�� 0�:m�8�j%�:�^��|l���?�c��w������e�az�3�jǄ�Ն��v�Ұ5��ڨe�گ�75�Љi=��N���.A��7���~h-\K(��M��/�$�D��H��h�#��A�L�����<P��(ub��9 E�R�QV�q�jB	�L<����4XEe�i��0�Q��q+.�|���4KF��
�kH�'Mˍ��IW�8����d�Y�y%Y�p�:v�ARN����գ	���rX�s�/,��9�K�n@?�����������(\�3 �'ӡ(��a}���tP���������5�I��u���,���
frܣ��W�B؞a�S�S��񩲲U��·E`c���ă*��oÇn0
������Z���Kiw�e��-���Py�EQ�ɰ��l��SB�M�S��9}�+:u��m��̇�2��\H��t��v�}�,�j�_ �i1胉�9���֜8Pj ���-�앺2S^)���u�?�7
	���1�*L��g�#x��F�0���Ұ���b�����Cd��..��d��;�#��Ԫ��S,s�����;o>5�aL�s�4,�$�7/��L#~�^R&�@�m|�S0;�<t��]�~ j���O��_�Ã���]�LsP�{t�����s[�Јe6#H��ٞ��#�ON�gvI��zP�=��v�������8��#HRup\���ɕ0� ��f&`А~��&�����k����}�` #��a+�f�w����t�topZ�A�,�,�c-�Mh�`V�^&+%������1�㺖V��b�k��R�>�1R��}g;X����.I|#P�*����K��a���:?z?���s�=�������cIK�����f�3�	�`$�KV�h/5�����x�B�)v<��\zF\�c�kl7uB`���5`�� ��-�Ӧ��ڟ+
����H﮷�0�f1���7�X�t=�����t�t�j~��T�{ۅ��9_b��������6Q�ҳ'�
_ѯ/A���É`�:�s:U`� ���h'�!4	��~ �-(����J�F|�cI<���TO��5��| �K��8�b�S�,�:҇0=S)()�V�)k��Dȇ.����]�a+'DP�±�q�榏��K�[h�/\���Y���n����K�I���9>Q�c�Zn�co���1p7���׵c2v�L_O���{ {�*#z/Y<�@�	ts�:տ��Bmp���:���.�	�'�orz�L"O����d�������:V��L=ȒI��h^8�Yzur*u5���St���B�C�?�0�:�}LGB��s2ɑ/6#�Ǥ�V{�),����ȃz9t*��Ns*-Z���m1fPR�ë���3<��Sb*-�L��N��H ��4ϯ���sq���Q�Я!QC�2J2g6����1?��A��c	�_���\{|W�C���FB�ي���h6�Z�4-��3w�����f#
,�yl���8�?6���ȍ�6[�d��=�(�#Ca2v�4 �>�� ��F|g�������C0�-���q-�0�y�+�LO�ʮ>i��ܫcd���i�ӔiǢ��C@�	���f��!g��%L7^�4��2�n	��X6��y�D�\���M�v�ۃ�-�S$��o��Oӝ��
sbm�y����9�z��]7�S����sUs��_�7;�
Ӵ����[�ܤb���s��~:�J`ymH(���%F�v�a	�l0����.�}��Bk�:r���YV�=c���"�k��?fF0�8CY	9�� �7�7�'�ihkQ�(¢+��"�$�EJ�sG!�G� 	b�1W��[���$߻��7�2a�&�����b�WB���1�sP�ޤ��O�9Z�7��>TG �N��8��e��$زzb�Q��w��0|�̑�\�n[�����Y��N���	��\��@�w����l7��O$>�&L�x� N+�i?t
U������7�������{O@�<�.D���1��r%��a�B�L�o����^��|u}gZ���!�U��j��@��ѷ��?�O��[Ӟ6� ��K���i�8����
���4��4�+�Zb�eơ/ �    �E� kD�������L���~=6`G����$<��N����ї�^�0?�N�.X�V�#�x���{��j!=u�Jϝ�ݠ'�4�Ğ*F�ζ��ޑIX�9Zd5�؂.�b�0v"o߮�p�
�Y�9�$A+��*����� d�70}��C.w=@t�pF3�E&�:��Q
��]�e_�J����10�r�Ao1}Xc��Q�Rsp*m��KC��FW�D��<�q�� $(%J1�l�.��&�)q�.�&c�J��W�&6�Z%���B���s�;l�� L�d��A���x@� �4���'Jv�$�!	�/cB8=�æ\7m�&)���d�)�S�����VA��a5%s���.w������R
� �g��>lR���`*<ޜmQṁ��6_�Lȏ�/�vr�0 k4��$�}\���ƛ͢i� ^�� �x�ޑ�LV6�8��%��Ev Pj�_p�r�aB���` z��J�W�=DZ\��9���Y#��N0#
'���� ���e���}0�/�&g�ѷ�X�MT;]j �&ݵ~��"�� ��Ɖ:o���݃%��1�'�1P-����7�������97�spٙ�9��Z0r���I�#ɞ@��+�[N�]��m=�2�i۝�m��@�bLI3i�;7|�ۨ	�x19�C��}�p:[	�Bt��3p�u�	{3�_�v�D­A$~�'�5���;��ָRY�Tc=y�ۼ�V!2*�C>���ޠ� dw�r& �!��Ҫo�m���A��`�W��2�C��ah��Z
=Rp���0��7��|nV��:@n����
'�h��-B�h���I�1��rǌ)��%�ha̟�oB��ʕ[c�r�Ա3��Z��/9?#f���zq1�,�H�q��C�g'C���c�p�ν�}��OI~���fu��Z� 3�Gq�����pgW�Z�B������ ��B��O!�"D�à��0����n���y�)�fS��ܹ�,���R��(H%��0~[�y�&�xxpl|Q&�לSR��A�mA��1� 3�n��j5{�F��uՄ Yʭ�_�+�M̿�ݳ����.3�����-���y�+�RPY<>ʽX�?J3�������_�wU׃1�||��H Goۛ�]T�|hZc�ѯI�<��ŅV0�B�W��)�ǲ]���YA��F���D��@��� ��s ��SZ$2A. ��y}#a�i#U��Ƀ�L�は����5�L��L�>��&D��^,�0�ϼ��6��A����ْ'�>'�:cq�My]B�����B=�Yza&id�Ya9���L(�܆�0An
�/�v���2Lg!E<Qb�'�$�� c�����&5�2�s�1�JG�Ԅ��n��D�cM�~��͍{|��$���r�"s4�L3�/��mh�n��_Qg��B�Z�8��P��w��C0\=i ��+�Xз>닂����xf�}�#9��I�5�%7�%>n���-���*�i�5H�T���;�z�����Y��> ������!���^Cy���Wo���/�#�üa&�^���F��ɮ�ӈXw${�ȩ��c�@���nb/�)�֣�,B4�3c�.(&�m���v�����zJ�s�!;<�a@bIvM�=�˳ ����T�1j�I�E��V���T�_I�*e.�x��5h×�|Yi��/��F����5�u�;7<���i�2g���$+J�$%4̕�[��u"e�V���o;�J��×$P��i������� ��{N�����*��)B���ݮ4��I�}������m����h�Ȋ��t�2e:q�/۠�6�\ݳ0}���*�>E{�|s�O��)������|BEC���W�N�
���&X�C�A�e�ak�P�R��i�e�<߂��R^Su�X��i�m=�Z���c�0��;�X��Ǧ`�hq���7�b1+�VBsj:���=�[��zb�%��Ā�1 9���y�+tt���j��(�h��!�-H�8wNZ�x��1� ��0-}��0���+��I�c�0�}X7��Bzfjq^�+E��3<�iyL�����59�4C�0^-�S��򘦵;��@���?����������������lB���g3��θn�#D{ ������'۔kW�p[[NԲIKr�J�z�8����Jˆo�`��(��H��>�^�ɶv��2Oae. ���o����g�4)��#	�n��J�MY�dP�x+f�E=�^�����AT�z�S�7HI�7�<3��Bj���b���!j�ؚt�iC�%5��� ��RE�ϠC�OR}��ÍA�%=1|{�'7�̃WH;9{J'�®�3J�^0��$*U�,���~!y-��Au�I5V34'����A�qL8ˣ��?�@�z�L����"h��:*\*Ǔ�3O>�,�f.�yL6��1����m���7�
w
r<��G+8��� 4��6���=fYP��w-��Eͻc�Y���c�rw�C�K�N�*�cC|
�"m�țFU*�B�B������b�f�/��Ĝ��Qn�W� (�o#��9���Ԑ�	���>2�C���AŚ*�;5�B\1�ӯ,�Nפ��4O�#	���hQL��37fZA�k�=��.hgF�1�`|4(g�����F#�ˡ���=�z�>+�t\)�0���5D�g�DZ�@٦����=��H�d@%���x�������ToD<��Pc���6n2Rm�� Bn��%�������C�t�Gq�8aQ-��"�p��FU�o-����OQ޼�G !�����@���FO�#�3�
g8�J�d��>�̠��9�2����11l�����r�h�\�  �Fd�Q�zb�!�1޾//�ܱ���z���p�1��fmt}&���	2l����@�C�Qv-�(V68;���
���Z�M�q�ͭ\�	�F<�G���E��|��D5.��}*��G
	6v �(�H<�˾ܙ�Hv��Q����<�r
Bf>���=�vA�����`�~��gM-�hh�z��1b@�L��l�LA�e�%�1����*Aǰ�?�.��Dx��q���:rP�C���*�^8��b�E���`P�,�Rn��~E�>�ֈiLX�uD`)����5��TY�r?�;}�X]��d4:B����WO����)�dJ��5��ɼ�I�3�LѮ�"�.>i�b�,���������êi�1�9QÂ 
F�s�~�,(��~��t��z��'���##�׫�(�PB�b��F�����S����9&ߊ0\��(�<��#�u�L�R����anC �g<}{I���Uh�9�؍D��~
i��Q���)����^g'Rx�CÚM@��b�}�x3Ϟ���!fԙ}�4�Q��t*����|xC��#�D��Qa_�̵	��js��W�~N���_N��x�4��!��^�4	K�����iZ:N3����G���w�Z7ƌ2�s���*��
���̚�������#����)SL��Ly������j,_ }��� ת�������n��cX�%���!F���x�9���ӻx��c����o�9 ��9)On O;�I�\�+ȱ �EƼ,r���Fk�PM��V0'Nd�"&�?e�=�A�Q�r:�u�����D�ͫPܠHIM��a�#�=����򁧋�I����JA {Z������3:�\�*h>/F<џ)u}oGɳ&L�+��e}<y|b]��b����=m0�Z�va�=K�+Z�?=��
2DJTP?��	��)��v__c�.i�B�h�Ò��(�/[�OTM�X���ΰؼ���Ǥ�L�>�Y���dƦx��`1D��2���U�e#���Q
s6(�9��,K}y(�G7���t�4�b�9����=`)B�����i	��=�G=<�'��*�����m�C5-zǺ��h,�?�4�#mk�& C6�    �������Y8�~]�>H�P�ϻ�^�����f��aW$���_�i�Ӄ2���d��D�R<L3�	�"LT�_yg̚*�"!��~Y���b�bUE��FeP���_獞�j��oY���j�fT�׌԰1��+��3�0VMY�|Y���=��OjĿ��wv)^x����1� x"��G�ä���@z��|��p3:�C��і�b.��0��92��i�bYM�5�>S3/!�0r>��0�d���&�$䡭&��vaj9��7�)s���C{��5w���a7+Dr�6
&<^�4<�G'�'���ٙ��3�3�k-R+*̒�(��H�m�T	���F9���1-U���*����0�A��\�� t��2o��}μ���h����W�R���6�9����a� '��s��L��Q�n�>�'}��*;iN`%�O����;3Tz_8M&��[WP�����!4��e�td�,3Lj�ՐGq �L(�!xڠ	�/Y��tG���W1k5.�����������6����O�M�r���,0*킚a�ߨ��GO#�!HJN	\	$�x8�&�e3��M���b�2�Q�o
`�g|��ʷC�M����'x�����BҨ4�������q�i��5�{P����h_����m7�-�����gY �|x���n �P�MA�wo�����@���>(�����EF���i�l��M��'�� j.����TW�ͮ������ ���a>i�HV94�x�����`r�4r�.�=l����)�֏�]�<"���ʁ-%�]�n�=���X�Y�l+;<��RD0��-��j�Z �����*�Y#�M�ż8����/�}��<�N��N�vjp�����9mN#y�� ��yLJâf��� \*��Dj]M0��twO�s3�y|��`'L2Zt\��ː
5��|aw	޷,�u�:h�En��Gwa���5!�"A��B<1Kb֩���\���CݵD��]�^�4(���(U�`�|�$�w��5;��,~�~d�N�ǸW0��L�&��޶� !�4E/;'H nz�1�+c��!|+���E��{0C�ͯH	�ׁOp�	�%L�Օ�%�D�T;Qx����әf�2��6��q�O��	(R �рC�9��)�[�ן;�yqj+��rMw�ʞf����5�sp��ګb���%@eJ�s��VU\V�-Լ�<iĖ��Kj|�f[�%�(פ0�̨�c���Q�n�x�9V���s�AShOK����e�� ��n7Χ�qGFPϲFBH�:�Gɭ���Z�t��*�bt�.|�#@݁��[%;j9R�͑{vIGp�Z��	���>5�S"%7\��2P�⍡L�:n�v@7.Rl�o<�����S����0E�2��@��9�}T}��e.�z�f
ΐ�Kg��`�4�K�ۿ���6�ڦzJS�׷���{J(���pw���Ld4��u�i?y<�c1���I|�hzb�I��:�Z���S�Iw��/x� ��-LO+�b����I}����K����Y�h��H=}vC6�����Dn�7?�◙\�۶��4����W�>�k��T2���;�oNhS���nCNߞƋ�ؖȯX�kH]�<�À˶��ܹ�Ve�t�q�<؄���0���<�=aц���>�Su��;�L���գi#����X�Dy^[����:KH��р��/w�eI<l'3S��gji�1�I���K�mk� ̅�9��zqr�1�w&�v���j��h@��d|LU�q�&324Z��Ѝ�H%�l���8зbm�^Cx\��}a�Bd�c	5�)�٤}��qp�E&~��<���8ڠ���n�íP�&��b͢y
��:����o*�k�ҢM��r�?�x,j�Ϫ����y��t^�jkD��e,%��_��7��oՉS���dPh5��Ime<�=�'	��|��B�xp>�k�!:�C��qm�8��<i�$M�+g:���ܬ$�A�)��Б6(f�_^��gi1{A�;���;�6]�y�~,÷��M�m�e�N@�P�H�g9��������,IԂ3q5j9}��Xq�I��6��#��f@�;X���4G�RKZ0ܨP|$=�u�0U��S��~��M�«vܹ�#��K5�Y�ΞGlyi��mpX��T�#s��
<xP����¶�Y"0�p�q�Ù���K�xF�򕉓)�)D2*��^��A)��i_��u��"�S�xK��;�;	��t!����vG��\�������J���g��s�+������wM��̼��R����������^O3�9A�G�S:I �hh��Q6J��,9g��l���KO��Yf1M���=�q�0�t'f��sZ;u�'C���M��K�����lU�[�Nͦ�U��q�c� ���#[zW�%�;��_���s�B��%:Bzg��/�K�����'����'���:&>�&?������Ir��+O�𺃃Q���L�Ҭ*ρ�h�urj�Mj�9`<"iG�n�p_7	�)ś�yi؉5o�ڛ�"��$�������j�#1s
��6sߙ����*�^�4��q�s\c�7c��!�SVk��!�+ڨ"�X��6ڹ��v�9����.Y��<�v�{�G�CoD�>�E�X����W �DG~�O���i:�e�V!lWAf�#|��w|�:�2T� 8��ݫ*8;㕽�}D���Z3A�MM4_F*���j�"{�$��7�]=�Ow�����U��������p�3'i�vgK�g�3(E���);HT8D(y�6�D����O�����|q�u��!�-�zvu����]�0�G�
�X�G�_!�)����f��ήT.[L]����ِ��#��A�Q�;��w5�g�BZ��b�X%������55��sA��-�:%�GP�1�}ǔ��8P�K(��O9L9&�65���Ȓ����ڞM`�z{�_�����#V��vi�>G�g.Phgm���T.�H������8��vUce@��pGŘ
T9�A(�mh��d�g�ѡy�W�Ӯ�ւ`� �&�{E��F��ǽ���%In�2_������zj��Con{1���=�9�H�5R_b���/T��P!H��u%e���Z�{Z	�1��lDlÌ�qyP�HW�����]����%����]���sԼ�;741�}���6dD�G&��
N�SW��w�C�k$1W�>�������}))��N=|��=8�h�NG8��2wr��y����SE�B,M^�"��ϟ�&Nu���h��B��^�ʁ��9���iL���1�>����ݘ��K��ة^��>Qp]oNe^�K8�,۰��_�8Ybo�n���Z���	��fu�+��
eRv&�� >��X�^�p!�����_P7�;�Z������� ��FԪ���ʧ�G8e����a5*�~#�kɖYK���Rx���7h�L�]���Fw-[aOs�͝5�MUu�`�0��0�ѕ(p[D �T� iF|j>\c�I����'f�yJ�������<�Z�W�\��O��(6?*�oD��>��"� �������z�L�V�'�����Q��4u�mV��*}�J,,�r/�
���q�6F��"g4�� E�$��RL��qs���d4@�E�4���� l�"p�Z("�E���n��H�n<�/V�gt1I�v}��wL��.o,��t>�`���;tg��n1du$�t�Ҽ���6z��0s��7:������q����0E�FF2�Z��h�	g�4����O7{L�Ϸ�d!	���^�ִ4��5�����Me�k�(eϑ1k!��^�R(�)Ǖ��$y=���gKb���Ìr�+<ء�f�@!���=r�kOP{�@Uv2b����/Gϧă�ܖB��\�x!|q�Q���%��})���L��MOH1�{�"���&����Z����i2MHp�cbF	��(����1ڹ��6�4�-����4����rI��������k�qs�ۅe�	R�s<;��5{��n�    >�1��DmM��MEcs�]L��!�V��5��a��ұ�2"Y����.�2S���\��/,�en	�8.��k�.q�ٗ����K:���c�q�|����l�qM��!Q�Qv���/���:�t7}�����_�C���*u������:�t*iI#�&�M�)i�>����oY��W�B`�4�iG�� u�43K�{��[y�v7`JI����_���7��%@ܟc4�Y���I��_�M��H�{ۍ�rrv���QP��s�T��.B��x�$,���z��������s����Ū�5㗥�P_���㚤Ig��>��}[,R"][�{ON@�tV"�m�{�B���	5�%ҀH���aoK��H)�l���T]'+���3���#� ��n��S��(��֡��i=� 1�/s�LKB��<EK,�Dx+�����_�,�q����}n��(��|1D �5~~�4�ō��Nl`���ҳ0�g����0Z����&90E$g��[�TO����[���h���
�Y$�6�����U�6�t�ɉ6~8ʐ��X�)O�'.��-�F�%�F�wM�:XG*���V��ʼ��ɲ/"��j3��A�[�tD��W���˟�����?����������_���}P����u��ar���Hf	�U�79�&�ߕ�����L枏O]R��H\����:$���w	)�HB�C�?!��6�yЃ5?-�G̵Y�Im7�ٵB�z�a|��|��`�A���a����6�a�l$Z}MD%�&;Dm
ru-��^�u�R���^��dEZ�kـ�ї�p��9Z�QLU��I��B�e�l@�c~���%�"�l��:��j3P���-tX7�#�4H2�PZ1����٧؜�W*7(7V�Jhj�gОG�	��Mh�h�Ծ�;oK����x����ᡰ���||6�c����_�S.[`dw2eG��Q���}�އ�kJ+�����x�v辘��&��-j���﬩�GO�����;"�x>��Y�S}t(��˸�Țmi�
�.�"��+���=/�qO��<�U�+W��k8��K��#���,	�{�

�"��;u�ۖ��z���e�bk@Ѧ�l�y�'#�z�ݰJt���Qm�v��]<�&�|!���t��cg�4�Q<�^�ա��^�ϋ�!;�9�E�U�8?�������%Z�It�F\O�e�b��I�jg`'2�y���Ăh[/�ߊ��N�F��u��9�L����.��ȳs�E��*�Y��]�hFs ��W�ޏ����R'�d������1:MV�# ���a�ש�����%��$0dw�k�/6�(R3�̺2]>(ьz��x�S���hɦ�ː ��o	�+N�}6JI:����f�Q��su� ���Ȃ����j�A;`}���I�5~m�����$S��"��I�� ��+� gs�_�+�G�D>��p��4۳�,�w:1��m?��y�"^�"	�?I�j����'g���դL�ZH�ڽ�/����	��A��z׺��EH?模���:�};R�&�b�~���:�ذ�����䌮�s�K�F��i����%����~�Yn���|i��T [�̦љ���~�F��Sv$4�<L3�^��d����
!`b��kj��t99td������	��IO��kg�����a 'TA���~5\�d�P!�0	��'B�a��YY�Ց�t8�4�M:Y@Bam��8C�}��c�vq�g��S�/�Ymb�*{*������)�����'SZ�t�J[B�U'�2�'��:���^#��镯A~�T'[8G��ұ1�='���P�K�L�:t��Z{�!��V�������-{�)�X����rM+�'�d|}�	��tēBy�_��,��z�|v�=���b�]S&)YQ�^��F0{3s��F$�k�YgU�l���l�=ku��2��s�JO��tF85�'K[����>���P��`�jo����G��7��J9�m�jc���F�&��x�w*��V�Z�x��ʬ�S�:8�2�#rV��4�^�+g*��}s�hےV�0�|������=E�o�F�;ǋ�"�j=:l�Q�Ψ���]?�-�aX����}@�4��ӵ|Ӵ?w��N�Gh��p�(�ܝ��Z�jy2#4��[�Y�'X�"��&83ĜA(�Z�b]2�6=c�%L�#�S���V�_�����v��y麟<�T��vb�N�/)�M�����$[!,0��;�.%�8�I�"��Y^j�e�����P+����<�����<��u��VA�Ta"18�1�y`~ҟ��v
�*�lA_,o�oq�xZKZ����d��YS��Z�j�㴰��߿m���/�)G��r��5[�)ab
#�0��9�m�$'���`��^V)��ӑ��	�&ˆm������.��Q��������M����,=�1�F�r�x�6�;�%�h�c�u�	��tJ��7RpRB_�@��̉0��׵:s08�!{@1�-�����:Ruk~4���U	&��q���[C���`�|���i�����2��[]�)Yw�W�/N���&��^ p}�3�a�Q��hWk5K���<I��4LU�Ъ�8?+���w�ֈ+�Օ!2��5��+v��h��;��C!�d!��l[8 ](��ez�}x�R ���_�~%��~�)�~4�;��Y�#��Ȏfj�(u
d���ڛ՜�td9B���\�����*����w����3H����Z&+�R��pbs���TZڳ�s4s��O#��82���q���^�u �y�Еkؐ9���v�D8�:l���͐�����h��Ap�s�R_1@p=����e�5j�E|o�H�Uң9]��th��7��V���v�{�.��>A�<Ӭ��U�6��.ؼ�Hx��H�V������?�8k�(����Z�����FF��%��􉉽l�'����-��*��mmj��p�TAI74�J\���z��3}�
ET�C�_Î�G�``�9G�r��+�_7�Uu�8��vi#qS����"�t��w���^YA�7���V���em�ŉ^A9O=��*3ܴ�حʻT�v��Z�E٨>���^J)����dߖ�{�=b����+�����a�2�p�b-�7,��}V����I��zF�[��q�s�u9����h���MAD�����l�d7;�������;���Q��:��YI�2�d��<�huG�h t����luܽ�N7��\
�H����N���Sf�ΊI�4�}^�����ٺ	W6�#QP��I��-Ϲ6�.��%�R���6�f>�+�A�(�r^��!�ڨ��ҷ8����6�J�Z���s�s��R�����&��a��eJ�=��W^��T<�ao����u�l����}|�~����/&��,z�j|QZ��-Bw�@`�8�$~��g���,[�4-��bk�`-��0�<��gy#��l��s8�AI��(֝�)ڳ��/�o�CH�k[&�����G�'317������>�O� �'���Ջ�cٳ%��$��B��r@�����	�m	���.\��|���HƉ%n���%׎�����;
�~�:�����bv�kD���CN
�{ze��i�����Z��
Z?��*�uE����q�j����zз�w���@�K��"�O��םGRQ婀ڛ����X�m>L�G���c�AW��h�j�����:Ml��9��%C���&FIl��2^ۆ7� F4��y1nN�|m�g[�;㶏s���.�<�äй
1����G�1h���Aj��K��p\�v�����!ns�����=E�?�+E!����x��gN2A���/����cvr	�*�&~~�#mMծ��4kQ��f��)��h�yޑ����55��9���G�
�I�ZLM��f	�$��ǲ�]�����6�蹔��8-9j9kQ�׳rʩ^(�^�HZ^����-�`e=�4�Ն��?�2����6K�Ł��Ǻ�U��&'�3�2ƻ�gqxQ����k��5g����9}�}��圗�
&E�J]���=[5}�(�7    SWV��ኛ}f*��S�"��-Zg���4�5Q��0g^���p��ֲ��Z?A�@��G�g�#� ���]�t�-K�����R~�GS�>al� ����F�礏��ў��?��>����_���N��vF4�gȘ� �c�?����ϰ�g4�1飔�("_�	�[y9�x�'d�dy�OU���!�>�l5��C�n��Q��U/��)MzdeX��`oT�Ӛ��y�럿,"�)��5�K��ҩ4����a�k^�m4�iql1��8[�������k.�|��JlpgT�1�j��y����+Z��o��u�IҸ�o�.�@$h�e��%�򆦩�{.u�8wұDr��1Cp���A��� I�>Y)�h�k�������k� D�_O��(M�y?�z�R�7��W��bs�!�I�8������n���x�Cĝ�9+K�b�<�3Z$�p�{wM��	ъ\�ø��[\�{̔w�X>��
+�~2�B���`�Y�_��9sbw˛�0����h=���SP	�)��V�P:,G�}zQ�s�X��IEBE��>(/	��)S˻%�?�y���w���Y�jUKB�s�`u���۹�[4�7��'MP��[��@��x��s&�U@7�GG��*�u�1�I��0_�=����E���Mo���ʗM���7�.�e$S�	�����#Ʋ}{;�P�nm�yu����d�'�Np�⮲����0�JH[W�)%�S&L�&���3��>V0s�}�������HO,�s�nj�zqϪ5�^/P+�)$Q�����$�,܂= и4j��>�����g�̺w���O��7'�RR��������~'��W�6�1�Hܨ�! �ʹx\p^DK����/dI�x�Vm���0��.+:Ն�ߣ�F�a9H�v�G��:�n6�Һ�v���)���*�	QW>�_�	���
�9Y�[9�L{9l�D���>�3�O*g"��������R|n(�p�+���Z��L)I\��N%�ˡI�>���*ɝ��%�/j1�~3�\F!pw�L��ؿ�6O<өK>��s����g-��x�L��:�0�=�|���`�,֫A��.�q�M�a�x�v���=kIr8}���X�c��cr{��y����>R1�=B�{z9���#�ݾG�!��I�h���	2o䎷PT+��O8fS��(+V������hKW�$a��hK�RQ`kE�J/E�\���Nu&%q���B�\�VZɺ/L�Ԃ�D_[X�gq���D��?^��z[��"�3�ޗjG�U	&�2�@�	��gy1E��F6����n	Ҝ��/y�#�$Cˣ͑C��Q��`o#�;C�R������k������~xn�pq�~ou�"4b�)6^QN�������0jbR�=\�+����o��(��桷t��n��C&�ئ&?�y�+Հ��� ���*BY��C�#���U�IG�dI[�(^Le�E0�K��4�>P�;��g�˄әuH{Z���c�ed�ݴ�y9r�X%#J�y�Jzh�M�hm���p��o����o/D�&2��0��et~v����1l^��gƦ"�艹���C��b>�3z�@3�	����AdW�%��k���i�F�Y����w���tLC;��a��__�gG���m���(y�9��ކ|��z��U3[�о(�Τ�-�?�q���wm�H���Z?xշ�&A5P����Y�40�xۧr��J��j�Ci��<HD���9з�¥�������Ӗ�ۜ��NV=���C��?��#_�Em�j�s�JǠ�t��0e�'��X-х�Y�4���Y-	f>"k}�4a��[V���5�2�vC�%�P��Mj��TK�}ub�R��u�Ճ7�U`�lFcw`[C.X[G��Q��?ށgW�y�����:&�ʲ��0��%�����>�yI�9j�i�>8s�b2�V���a;,k��</��1� X�m��������/�?��LqG�ޠǮ�I�A�\���;��L'�MC�H�=�DK�zzT}��b������+���D�6��Dm���n�ϲ�\N!)\n�m4d���D/�"T-��+T(k[_�@,���c�r�I q�׵K���)��58}���uMm�n��T��=+�-�9�t<�~���Y��9$�*�D�n�/S�m����'�j�{��F����,���`���'��G*Tl�׳B`�v]�p�g��!��t�\`�ev�q�._&��f��m�E��ב$�QZ�Qb�4ϕ�����r̎�D�儳\�Qon�t���o�����=h��I�Y�]�Y+�����N/��)SfY�Bx�n�WtIȯ���ع�~��<K�]��n�]�������z���GRਖ਼��_�w�!���p[=�?^%(v��$���4�S�@ {��P ��h,����3)�<��竞B�	���T]IS��u* �Yc��V��  6)- o��G�/e�Т�*���<�Hg��#��aL��jC=;��Y�I�
��#���_\Qo5��c�����G�nMM*�4iO��B:0�Rcy�2tF�x}ۼ�vX�C�C��{�q|e(>��C��ish�aJ��t�_���f~n�˝@L�s��J�Y��ĸL�J�C����<L�I��
�c�ϡ��W��~KT�s��z5_)�a�ά�o񌛡�ZZ�z�d`�>��%���˪cEB*���P��!��yv4��l�N/��ⱈ�3"���2�i������Wg���h�p��K���_��HP!x}��|�Dqz$� �?]\������}k��6@乃�3�l��z>�; �e��[0������E��$��eX 	ȥ�"/^��4ǉ�A�$���`�9
������0MJ����}����`)��M���\k]r���G��U=�P�{}�MI��I_^HI�q\RyeY�[~�R���֨v`�������3� _�jW�r8��)��ý=�`f��<�7g����#»�4�.�~��y�-�p��������?0M���N�5C�At5�Fc�4Z.��|��\E��k��'m������5�?���"�y��sK�����dݕ�?�LȂI��:>��=���q+Vp�_��D�|
e���)�X2ӻ~�6���Iu���3��� Ӿn?��dj�$|���������&��O�?��Ų�����O+���H��e;��(�:>��C�����8y"�������ũA�휹2��i���x*�(~�=8A�+t����0@�1�L׏�,�g�e1	���S�����sY^V<[.d�rn����
��M:	�8C��{�)~1�j�[?�gb���,�WҟTvd�U\[h�������1����/�̐-L�w�WN3+�z��Ñ3����A��C!�!"��u��M��� ~h�;�=[��an��˙:_)[z� "E#)�_����7g%oo����Pb�-����_���IT�B��L�tqX7�x�Nu���]u����p���^cMp0$,wO)���E'�^��$kF��k� 	��z�9��8��Ϳ�UF;�}i?��%Q�k,
�q ��sE���Ng �!��ǃ�6���(��g)YՄcPy2F���um
��H����WC˝Ri�G2)�F|$
��%C
���� �o���hj���>�y����Ƒ�p�Y��{��y1����~�{�d6����죰�	�����0S[�r<d-��Gֳf�s,#h�q0x
*�v�9�r�c��Fu��urR���m�	ax�=��*cFY0oS>�MV�	h��0�p��[����l��7�I!�ǋEy�q����p����ǀ8$z8M������Û�p .�?�,՗��5S�A�F\=�;'��E�Y����m�.�kh���ǒ��g�t`@���}���h�(�^z� A�.��<�����;�$X�d����C�@m��͏L�K���/m�y���mт����A���E���M�PxR����a�Y��@��a��%��iswNV���gv    ��9�n�,�t+���E=ڔ���+��+d�!���@?q�U�r���Z�2����R�⫦K���{ ���lTAhR�C�q�Q�`'n�)O8�9�:�qOB�#z�1�Q4����官L �F7s���̖�x������K��W�DD�?��Ȋ�FkL,�GM�Tw=�1s@@'��|X�.Q÷Ǻ��%YI��a�Jj�^�ț)��~����n�ˡMGGIJ0������F�mN"Xq�9�G�z���qC+�Ki�# \o/I:{sg~��?�e�9q��kO��>4�eOg�?��-X��u{��x�u��s�L�Мr��*h(���N�@�}��kLvP�n�/u�'��k��f���ҧ��X�A{&%�u��$��� s_�IFu����.�~$��,�
���&�#��f=�fiʍ�5��}$L�H���9P�Ĝ��}�x� Ӿ����p ����sP�Y�	��Sf&����7����,-ؓkQ<6�c�K��[1�3�c[#_}��q{�Q�\"���o�?t.�2�X~4�W+����H�Ͽu�oq�C�	MT��J݋�j�B����u�����Ҁ�"���Q���?�]kyhFܯ`��@�||��~pN�/f��f�bB��4�續8#V����G�����k�u8��1��9ս!Pq,X~�׻�8Y��lVc�O�Z*�vZ��:�˓R�6��C�W�on��4������D��@�5��e��E�7{m9���	]��Ύ�E��6���qF�ň[��6ļ~��?�[#��7�
1��t��l��[��-Ôp"���س:�QL���h����_i!����~n���a���Ηi[�q�ȴ~����+�sN>��ϧDU�[A)`/�?��r:9ֽ��c�TfN����vA�P]��ЯYA��P�������[�:s��N���Z�V�����b��A���MP�n8���j�zi�5'& ������=m�h��bqdM��5ٷ7�x�X95�A�]��7.���5��4򳧇�k �#����W�jB��̦h�D���4��T���I;��^263�����՛��#@:d�ԕ����|�3w`��5ٜ'#���}S�`g��-��E�9�oo't^�;'�g��CƧ$�볕�~�{e�tc#	X����������$+W�M�"�<{.O�tG�������2yR��֞�[���4reԡy:
9=s�H��!��o����t)�`���uE����:�4r�U��T����Y�S�a� ����B�J{N�{�&U��䉺�-	g1�S��G$�?/o�&�S�;L��&�w��D&�}����c�=�M��&�0akY�Y�L����6ª ��\�6�(06y�X
D�91F�tZ)k�v��[�n�ژ���ո*�<mYsbW{�&����g1�����nPKK�Ҁ�tɀ��d*�x�!@��W9�f#�qj�����j&c���`�@טּG���Q:Q�X3|{��
\G��� %q5֔��9�A��&PFN_}���W�o	mN��b�<L|wU�V�DY�l`��a�N�qi�=��^��Yu�jl�z��Բl�n�V�y���r���Z�ӊ��*a�,���Ĩ��^��1����X�X)�%�����'��8O���Qn9��[Q�y��J,�|.��-�z�9����T�V�p5 %�2�&�$��<�C�)�R������A%S�� ���'a�p<ᕼ�%#�5�Ҙ=/G�^��^-�c�׹��z5�S4"w/\S��j{0��������&즚MTk��,�6�^�R�E%�g���ɣk(%s�[�JBu���r���>S�e�*����*������Տ�5��Y��9qCr��4��B$f�<=���~f1n��z�:��v(W̑w�^9X�C8C×Kd1�&���=�O�<�		R�߈ne�%^/MHBbJ��� E�P��eXľ~����m:���#�!]���@��7QT%Gc��{��y^@af��H�����p� �G20R��A��#��^���L�`�� �.m�f���ȲD�+|~G��7v�a�(D�c�}��Ʌ�%�
��
aI��P���h-hQ/@-�w-��ٚ2/��*r���cl�;Gۼ�<�YȝeYp[ǹ������>�yJ��Z�c����� �t�*���[�?)(�$�1�fC�^�����z����n�<���ç����� �m.�흒�'���9�kp����a���Um�ֻ]��^v�W�}Lٷ45��C�z�4��b�ծ�QK �U���ֲ.?��8ܼF����K��8'l�qz�qFo0���?d��֟20���,�sz��s������|}p�l~u�~�-�~�m�Ӌ�|c>NbŜ���?	�ȹ�����؅���ӕ4b��On���AA+�#����6m0�
�z�~�S�p���U����|O�'sEt��h��lý�
���ϳ�ʳ�T�̮_���|ۧ�;/IdĜ�%�8 l�7� r���M�t�Qōc�.���8���$�&���;.��z*��_�8�-`�<��O���ג!��z�q���!ɗ��vm�k������{���m$W��u�6�-�F�������T������.��
�O�����o���w_pt���t�f����puR����Ps3��X�Ǐ�U�տ>����L�R�D3��>{-%~�1g	w=���I��C����i��}<o�;8���y����'�=K�+�`	���(�7/䈐K:�L*�Ο���W�)XC<h�������t���2Q眖�#8�f�8��T"���K�k�.�9�ȭ�>(�	�q_۰�@���Lѭ>��R*�68b7?��_������������/�����%��R7�!�=���~��2+�ޱB4�Ix�b�<a�7Џ�V�ۈ�[��f`҉q��M`ρ��#�8X���y�nD��/K����IzN-]�l���� ��e���:9W��$��N��4�Pmq|��K��IS�z�]v����L.2�)�k�)oj-��g*+�L�Ī�=�O+\7ݬ���
 ��n�p֬3�%�1Ν��R���	�,ʆBʵv�%��[Y��(�9w%o���$]5�u=�"����4[�*����d�{���+Oͳ�o"c��E����}n����X0�)�q6�h2b��\�#����`��{A�rk�Z�Q.��W��c12u�)A����I��K4�]C(AZKbsyN�-|��}2��ց7b����)`T�Kv�H���3�NK�����"h��u�*�h6������S��uH<���c�)`�$��F��J?���!K���<�/ $��ݳ�l����v���*�ś
`4�<s��T-S� {�O`�e��{�Pk�ϔb�G�Ȳ��������𡾁ͩ� od�g�Ҍ��jM�����:��^EiI�o������`��� k9�s�8�WQ�FV�}֏e�j vc��;����
ēPW�ĔJ��\�#�f)�t&��_�s����PFM��t����N�F�Y�&>%:���E;��X^�'�<ֿ=����P��~��?0�8������F�ζܰ��Yd��D*��N�b��#_�W��4�N��.j��.�����ե�BK&E`��׏�n����w��5��!��$M!2瞵��lK��^�`lF?y�5?�T���O�FHE�Z����X�>0���N��U�$r.mh@:�zF��{ l�5CѪ�m��Z�)��y��A���FI�jF�V��W�zRYS�/:���q�:1W`����' �������4�L��8i��_��]�Pc�w��t�gI��a+��[�������x)��zS�sǚB��y
�yy�E�t%�-�d�����N����l\�Q��U�l,}�'��V���[�oڏ�FmN>X����)u�3�3U�R9pS�2�V)B/a�3g�9-_+6�t�=.ޗ��$&�w�`�S�N�]�ɰM���IM^ށ$i�dl3�_� ���ZK�o��ڦH�~����Ԍ�ߒp� ����s>����y��r    )��4 9�hiܶ��h�����܎i���aܼ��wa�ʝ�Q>�||;@l�S���3��LK��~�e"�$?#wRN؆N����[��-�ӂ�Z�(��>����8 �*�R�?!��I-B�NW�j�JAY�Ir'��im9��5s��u���9/���u�����0�`K)W���Oݭ�" hM.���Ѹ�.���I�����7N�U�/�LcU���T�PVS �MP�N����`r":�B���φ�z܍c#���߲ϼ�$�S�s���n}&�-4Ƚ�#r�&�kDY�yޱi����%�=~ո.�S^!�w��N�����ηFdN]�ҳ0�@�;�ӏ��{����-wA��Y(��g�uj���]���A��{S���n����N��J��(Q�`����+��^��I�7[�7��5��{�4_����ҥ��3BdZ�D?{ؿ/3�[q���Yo��;�������m�ѳ�&ٯM9�RmU1S��UÖ��� E]��m�B�#�u_��ݝQ�:-�����k�5�έr�ԣi65I�c+x4��۸D�0M:�S��_����f�2�&�>�Z;�5��T����\��� �5����s���."y�8��`�xP�<�cDq��SlQw D}w�fxWڦاy�e�i�<%�s8��[<(,�Q��z=�[q�b����>��@"��l���U"�=���h�g�W=�Ij�+D�R������Ε*e칅�Ll-)tB�s�3�<as(f+��{���FFs<�b���z/�.lͫ�������P�㿒��+ei���zT+ˉ�v�%*�z�vQSK	m��m;�X�[}V<�����;Ӌ!�]���9���{gR�X��̮$�u��:$2b�ug��g7���r^�J/�3���'�	f�����7�lO��c��X��K�����ۜP�9L(֫�g����T��=W12����
D��Y��E�dx��NW��*�/E:~�Y�`��_I|��+*4��
z�;�I�L��1c��l�s�tXR���i9���[��H��A!����/N�48Y�����O�񥏊Ƴ��o���/P�9��̞Sܜ�J}�epv!��*���#��0ª�fS�P2��S�R_��ֲ�.Gg=���k��IղZi���)Fmx࠸wP#��P,���n-�*�ѩ�w'�(
�\��hQ�E��'�HnПoy�S�?��@��IM�r��I�$�6�lF���sk0~�E�e@<ebt��Q��~����k�<"�A@��Q�}:�D��.�	�}��	��|]�%閮B���|��(G[��b���?����Dn�6�P2"
��5���|�f��P��Ce=�3c��M�9'�y�%rv�)������T�:��pk�K�h�iGr쟺ꏒj$|��BK2�+@"���J1{����k�Q5x��o�(�`s��@y�Ѵz~X��ش?���&�4PF�����5�iu-�W����ֿ*�R�qUشu�|�@�+6R#��K������d��F_|�{���0r�^߆]��Y6U3Hi�jkg=5ڒ� �(�G��� |7:sͺ��<t���q%.ߣj?t��W�^�J꽫�6���}n�&f�"8˃
�N� 8a�d{O�_�@���4=K�V�5�*���)p��O���@p�d�������m[���O��Y��X5�Ӊ�j
�WڑkK����\�%:���y�
[��	�3�q��=G����N�n�\نk�'	Rf���;��½3/ۢè��%u�x挜��P?�l1Wo��T���p���E�(�T{m	�276Q�pQ�����7둻��� �X�z�Tx��e~&밺����Y�I@ ��"W�/���������(CۏL��,"Mۗ�Rp�+;�u�0S1�kIG�>���i��v�$�Lf�Y�Q����#�t�9��=ސF��)��ԑT���G�r7s�+X��Zcar͚�k��u�Y{����y���ɔ��-��]�YL$��)�����G���Q�LVv�mb��EZc����Q��I��2��+��R=�o��`�Eʉ�wm6LV��������h�o���8�|a�G�]�7C��k�8�l�W0L�_1��ꆛ�4�Y�i`*�*�V�aQ��b��8!Y7[j��<|��,��u���>�l@�e�,X�NϏ$B.�v��u--��f#����m��U�˔�ќtC��:R	j�G~���I��fM�<�����q��>�c$F�{��������ψˈ�U���������0���~�3�B�I�n��	���-���O���]���9�@�_a����H� s ��q� ��n�mؕ������5B,��x#�lF�5��xjz�m��A	=K{�*U�b{��<q	f"�J�}������TC]��X�h��VȆ���e���LAd1�"��W��N9�5��o*v�%a��<}�E�,uG�V�O��Ȋ7��E��#J6v�y�=��Z�?m��S�P7�Ύ�%��#�c�.�^#U=~I֓���qa��
��W/�5~���0������1\M����G�0"��%�bQ�±�3t�}=���XZ4�6���c����$���1J8�9ܺq%ԝ �o�BD^RX&���n�5�����<��fg�?Jc;e�����9)�t�6��d���ېy��$՝��P�����Ie��UiK����w�c�q�Gu��#�zu�ty���&�8=ުJ6��;��RS���!ɬ#/��f-j���]~+�}�ŮJ��E�/�+}�3*Tċ���]h�7���i�٩����Rƞ��B��ؓ[�.�]�5�6��վ���0���� U�?�7UgVa���9^G�U�����a��*��=�݄0G���a��һ>5��NyZ�O`�&ӝ�(�Ǡ,��a3.\�;?{��P� I~�gk&���7`�󹈕�0���<u��5�;�j]|.j���K�����8ͥ�D��{K�B��=�Z�}G̪�R����-U�)J���#���'}KZ���d�j�78�u�� 1� !�+6.q�%�HZڊ�D!z>|���Զ&����;O�Ͳ�Q3�%ɉs�9�g�
�t�9�&�y�E���RP�!!����M�I��L�˜H�T�T��ֵ�D�|�����3#
�`.mȗ[P��Hd ��-��<�s�����
�O����ՙ3� �����M��_�+K,�����p<S�SB(2i��2i��~C��-}|r>[+�(g9nyy&i��E\IU$yW���2c�x�6v�R�\���?���a2��L�:|̿��k�a�r7�e�������S���d���F̢6��mS�����ԴZ�����	!	Iۥ�}u��@=ʭwu`����_��\�1����^qew�a�RƧ��_z�cwL>1
+U�C� � ��F%J�ثKO�ly��g��1�t�L�\�壟:g�����4�Yۖ ��w
Ta>����oE���C^��7D�2S��?�;1qĤ�"=7R�>/�Z(�?�93��1���WI&u�Q�7*�ޛ�������?�����L������c��,��#:˞�S��<��Ҷ̱��]nG�=7������u)̺zU�J��¼?o������ԧ���v��MF�I�G��v�!dN{���?B���/��mٰ��h�kVt���a�K�.A_���Lg��k��+L-ǭe�P����1���"��W$�$'M2A��{s�c;M�t#��_@ ;0h�����o�%�`�=d���3j��%�;�q\	�� �r��m�Cs��ْ4�i�,8�e�V�>n��)��%Ķn���^����G�߆"��������k͈Ŝi�Uq�Q����Y�Ȏ��iu�	����ּ��2N�̣>1%	���ScS{&j���Š��y���dz�/�h火���Zi��^~�zA8[��閾�I�Sh���MCՏ���c��PK�0��VҚ�3[n[�zE�̹�߂2}��,��Rc<�>{�IbW�'p�?x�8|�w�    ����C�<h�ve��蝺�'wD�@���3���s	d�����h�yg�-���9�`�Q����KB�����L����p�B�����j��Ĺ��ֵ��ֻ@񭧔D�!��_+j����>��u�ޒ��9���''�$������.�	�#Z!C�l��S��{��[-�V�㱒��l��A!�"p���3wD��g�\Cf�TK��=��k��!7O�+�ѷ9<.�7���g��#j�yt��0�Q�����%���)��S��K��il�,	�J������K��A�F<X%-T�}���9�2h���1�L=�:ҳ�3j?�8q�}´}|���lj��<���sb�_��ӈ�Zo8��Ĵ(�-_�d��-���iz^��K>ẃؖ� Yb �_d=�#������&Ax����q��4�y(>K5G���w@��as�����`�Ә�I���^=M�����ϯ��e��.I���c6�&'�vU�tckt���ʔ��L��4��K2R=�DZ�N�~lI%1B���^�(y�wv��U"�K;�<z9P�tg�'X-�
z�=x^��ߏ	B��l>��~3��$�h�������Z�H��O-�+�~�������RR+3����p4a؝6��s���:tYG,r,T>x���<�~�i���}NL)&�J��VK���z��0��C�(�,��tl�I��f��@�"<���ω�8|х�ߒ7�autdC�j!��
K!�<kd�)���`��f_6�gތj�&�.���&�*��Y
�����5
�; �&�"�c����P*�- ��52qt���X��芉�Y�iE��gb�.V�g�j�j�o�����>�Y�~��r�w\� ��0-�l��R����իY�;��8�Tz�R9�F%o��F�v�ܺ9�m����#�'�eU�j�i�#ߔ�����7W��%@����ג<'js�C���C���@��9����^HG��Y��ǎ�}Y�X�V�gVgݷf��;g�и� �'�A�(���)wȘ���i<���g�� ��-ԣ��h�ssQD)�z����r�	��Ety؎�#c�����G$6����ϭ$Aj
�%à�)殂��@�&�l"��F�.4x����,�\��d��Gf�_����=|�,�P�K�g�J5%_�����P�x�ڋ���ְ��QMDl�dC�b���I��'X�,k�}�;@v�v�H	����
˼�=�&�R�۩�Ϡ	�S�����'c�v�������R����U�z��o� u�u��Oj=���o�F����Ξ?�[d+���8��RM��$��]@�zR�a�U���%R@YA��ugP"7�i��4�kHA�����>.��{n.����2�S��7@k���ȂY��*h��}�����G�=6�9��e���O�"g>B4�g?�_+�F#�EݺF��{��e[uG��%�A@��Q�-�Sm�3H����}-���3�(>G2�Z��ذś� r'	77>2��o	H����r`>?B��*�l~���]�h��wC�,m�l�V����ֽF�S��G��ϖܞTL��mg�2�5�N�v�XfH&����i������������ɰ%0�4��r�}A����78��y%���I�e��UmZ��qa�^���݁��G2�
� 9H\CH+'���չ���)F��W�XH�)�5������A��;>�����Z�+V/8;�E�h�GՎ!1����T}�d������Sl�N�>�Z����]�qN9����[�'I�7'�~{�*���3����W/������_-e�ma=�a#4��8D�	T�0n�9�f -"��w{a�҃�:~.�ϥ��Z\���W�v^�0c2����Zӡ�C�viH��q
�:4�������~J������S�1�0���n��T2�zmRx�A9��xb����$��k�K��Zcg{�GW�-��Ց�	)� ���6O(L_���!JN�V�����U7 �,�X�0Y��e���紅�7R�T�i�1C�f��dBc�9����@����#�>��<��s���9{�#
��0kw�������b�pt���v���,w���:��#
���O�7�n��F*-����s��|5�仩�tڒٞT��W�7�ژ��;.����U?�n�3 �)�w/'ݵ��İq5�@��e��0��.GBX����i�6����e�0�=)��xO��>��ɒՌK���i�U=Ӈ�����QD�FuH1����[wKo�˧�w��@�������tD��E�d�����)��F9�����OwN�he�x���4���J�N,g�R�H�t�z�W�	H�c�W�i4�Oɸ���B�dJ�2�|�[�U��0��4s#hף,mD B�����r���i��U�B>��s��H���PR�\��&�d�:!<��sI�Zs��e�Q:�:�.��K�����;��k(��(�î��޼z��z ����n\��Rg�i�6!�J���অAk�tI�h�dY�%ޣ�F4�Q�=�GWLl��4P����:����A\3g�U����b��3H��d��Rg�ѹ3	��=���[��C��a4'�d,-I_l���`�]��g�9��b�3F�U[ñ�ԧ�<�،�9{w5��N��h��t,��<�Nf�j��<
dZ$�=�ڱ�/�d4��{G�$|�g; ��tw2!I�yN�/W�{<�Q��C �`�Ō���"��(/2����#ȾF�_�g�|�]I��d��L��}U�����áMƦ��1�~G��S���Y�8�����	�7&�~�곩K�Q���2��[<��S�/���Uӯf˔ts���ʓY��c6�㭕۰jxɷ���X'!�K|]�&�	�[Z��:����{�ړe�Sd�����䉵qyU�f��Ƶ�&B���2��g��9�ᨄ�4v��e��X����-Iݼj s�J��#*"�͂��� 1�}a�Չ�ӢnG{�M0Q�1X�&uK�*�����7k�l,u?�z���DU��Gɠ�aP'��6���*�@U�u]�}`���XڌبZ�D»:��)��!��8��!��E�S�(g���Wr�z�ś��>���Z�x�Z���c]K9;Bg�Tt���
�����	_{�i��{Gq٣��$�dk�J}�b����9F���\��X^�}ĵ�V�B��B<?�BFg��3w����M���ڎ��㜰+��;6���߂�d( O���{_!#P��#i�1:>KF���Ѭ#���DX�P1�
^��>�ۀ�����֬�����a�:�CY��H��q��M���!=W\h{�LgmM��Z�a��u=�H_
,�/l�����4/N�����qK�P8��v� �IąQ��9?��ܼ��q7��BtǬeo�m��[=���/�o���Ξ6�=}_ޥf[Z��z�#FE��z�]���n�dX�Q/סvD,��<���(]Gb����?�6'NB�l>�y�Z[޷���#��g��&<7�[�c�-�w�d��˖�w޾?B"P��L"�m}�ug��*!��W��i#Ku2N������,gM���|���P.{�?�ou�~"ښ��E����ņ�be�^��Q�KzE�x�������WzD�%Y٫���{���L�e�t-�O-�͒��S�{��E1���LR'�d�׊�g�/�#�f	;t`4y�U����y@\�^�H�L�W2��~�T�S�3�����ȆSP;��^���T�o�i���12d�6�,!¡�"Z��4�g�V-�������ꮪ�����t�x�tk-�y{Z���Ϊ��9��o�f}�!����GA�V0�c	��g�����^I�_n����ٽ���0��?5��@U�JHHm�A}�DZa� %Y"c]
�p^�V��i#��2^=�|���P1�f�K�;�j�4eI~����>�Hv��-��Y.�a�12S�c"��֨TB9��~c�q�MY���g�=���=�.��%(V�ғ~�ft>:{�T!�ҽ���X�]f�S��5 S0<I� 9  lI5ŏ����BXWč$�a��ʃ��5 (���6ޚ�����
y�Z�+�{1b\�����G���Y��@ 7
�+uS}��2��F����9�vK�u����hR�e�<"��\��@RԠ�;n(Cg���x�c�h߽"%��}Z��&�AMtb8���Lu+9����L�m���y��LJ�n������vN@.�P��LKD"�t\�S��Fh1�ѥ3<ȕn��z�>҇�+ރ�=�>���Sj��.p0�=uIXͅ�nq���"?%��~+B����$L�v�5�����S�q�Z���͎���~��p��Y��!Cucw%U�+�a3Β/��<�^�}x�e��X�>�|U���p��P�f�P�����`��Ga?/4�m
�b��~�V��A��<T>��{��̖�KY.����u��Z�k8n�}.nքJsv�\�[�r�tl;{��TS�,Fû������qF�#�%�+�$:�<Y�4�g�˘1�~2��ic�; �g�Cļ���Q�X�������X��Q|�k�:#3��T�{K��J�+E��8��)a�r�� q�\y��Il��<�=E�څy�m=�߅t-Y�"�qt���d�9�vvc�ݨ��癝
���Q	�1F36]#�8A�$Az�xGb��S���+�>�C���K
ԛ�������C�&�,���:�)\�X����k�]��Heep2���h�^9��7�9�����N��8���`�/{g�/L�(�P8��&�gI�5�Ό	��+O%�����z�����n��c �������8U�qV�S�:m��X�v��\}���-"E���){c��n�A+q�k2o8�#�?����؄�\�ݼ���,Χs�+g8����r�c���U��� ��g�^�	>tQ�Х<�Қ�r��R -�����ǋT�F!!s�z��t��7o���CXr�/;��ъ���dg%Sj^��fͺA�Ea�9
]��]���	EBM���@0o=��l��~:��=� �C��n��1���e-����X�ʹi+�����w��N�����T�j�$7�,E����2���;<���l}�8-�|O���sq�<�X v\�[d@H����&8!;D\�aǼ��89�	jZ������;	�ϩ5�{! p��VG��
<ą������nTy�C�0�SGgW��Rq�H#��yᛅT���=p�� �N?�k|�ƨ���T�a��8�k��Z"P��/Z�:n�jM�L�f�	g����v��Zgᆑ�A�0���ҡ��Ba������\���¡��5���u�T�m{j�11O2M�߿��,+�xE�{qɨӇW��(=@G7T��U��-ٜB������������¦�&���_�ݴ^���+��|Kě�!��W��D�]+�L���A|�2x��:fA��������Ύ�����z�{��kQ��VUL�i0X�I�8.�|�}>�ò�LC��|8OqN% �wU�v �c{|\�n�ˠ�����V�O�����/���{��_��>/A.�L�>?�m�/v���������L�ǜC��r�j=�^�M����j�`E��᳟G�FUl�=���L"����/3��Vˊt��5���1{,�ĸ%x�2���)`�Z�Vj3�k����~�_(_����z�<���&ђ�؏��5�V�*���w����>�|�a'��1m��&[������R2����tv'�|yve3g�ZR�A�U�S+��~BV�ɕ��5A�{��BӍJ�r����qMK�a>4��$ˬo��C�Bń;q���c���FLP\~�I�*�w��}�{8�N�@��ݭ�����3c�༭�q����ԼS��G�L���#W*˝�1��W���*��`ji/�4�½��S��<*0=Z��$K���9��zO*���N[ �*D%2��V-y�D�9�9B3�4��D�� f���1����A1���R�-�`';&r�E�"�g��Uo,�O���?i��4���X%��� }�Z��+�F_�R��%�MVU�&J���괼�Z�{a����j�T�9�*B�5��/��$�Q5��G���d޶&;	�[a��7��)��}����q��v����3�;�ݷ�J9 ���@�����#�M;SC�2��:(zӲy�kk�~NR���w Tsܒ�^��eR첕�ߒ�D��8�.x�~���fo�Vs�&��/0w��@�f-���b�$Q��+<f�"=*�lNE���`|I��I����8Y� y��:�9֔߂����=b�l�S��c�$��<5� �r�Um��Z�ɸ���@=�YB��#J�9��h���֋@r�ʲv�5�Qr����돭�0���ݴS 0��C�~�A�R����z��+&�5�jb�_�Z�/���W�&��9���G�p�����H\������`ͼ,������l:*��2���;���o����3\�-���~dSv����U�q������Pi-2J���d�dS�%�%�v6`6s��[�[(S�n>��C6�-	���Jj��AǞV/��8�愧�J��+?�\K��sU��l&],.�d!�A��K�6*T �F���(2i��ɲ�G�����#C�Aٴr���o#�ńDP/�s
/�5���1teV6��1+�����b���b��� ��y����%l��>ʳ�O[�9+ +�<#b�=>�g}ι���0��b���#�i%A�G2:E�~У�g���lK�-k���k��F�d�z6%��/jO;������2$�Z��j�d���O��ǟ����2"-x      �   �   x��ٍ�0��b�|����c�� �aI$U*�O���{������㩩>�륥ު筭����)(_]5M������ԏGJ\%h���
�m�P����#�k) ��?,l��@�i
��Y�5�/Z�Q�X Z���vL���$�u�,B=�Lj@��* �m��5K��0�ߟ���-�      �   �  x��Vَ7}f}�����0\q;�3v3�����b����������9�E-Ɇ��@�=���.���O�U���>Mhє�i�1Lz�TG���5i�=����Z�^��(e����{Up�yc�
���y't�<F>4m����R�Zt`Nb�e�a�Bb�sn+û�����vjb��t��VF�b0'�-�w��q�?�"�:03�C��?�9�^L���V����|��B.R�"y�(!͓4�c�q�'��k8X���Rb�������ݦ^�m��KV�����J;Z��UV�_�)� �d�����Qkퟓ�rpm������c�[A�J+k>$ �3aH�� �f��G}y�KsШ��q�n��"�2��e�a�8�>�X��=
�kո�����r��	dIs�Ϭr˧�7ZX�%7A/�z�}-
f&�b/�z��"��V��?�Ǘ�i'^N��9�spY�"���qƯ��fÙ���+�G9�Gy�l�4+�$a�N�ox�Fn��l�k�O��fv�,�J����?i14�6
��q��-��s��M�y�k�Qw�p���	7kr��4+��8�ܢ� J;���W�|i�(:7�D�J�Q�8��!���=����8$�?����4_"���Jv?��%l:�=�P@�ynY��'��n/Ɏ���uɦ���25܋���c�+RϹc�,�8��"!|5�0̫}�ew{���x�S���V�W�mZ��s�$ߣ��0K��9Ȋ�Jq5��b߯f��{J�QX-��EE�i��(�()�"QދN
;��P�ˮKa��G�Uǟ m��2â28�e�?#����C�	%2b���1YF���!�͘j����>��z�Às�C�"4r�߄�u�
C�qH����}�r+�X=9�� 67ΛpeGAnSD�����z���������z�W�������p�F@�,�is�^k��$�x�[�O�p����9�IG���P�˪>5n�z�u}���J�V��ӷJ��8�rN��(�C��3�p"t��W�Zu��6�Eiݘ���=����q跶�<ͷ݀Y|T9ҍ�K 1P��_��\����h�d�[1.�j���R����a��Cw>��{x,&o���3@2����V����r���˒y�<#��Un/���	0u��p�ꄼWÞ�W
��:^�eE�ʨkO��!���Vx؈s���׻�I0��m
^��0��F����w�k/�r�_�;]k����Xc~�#���9�2�hB!E�(C6g|��\o*�uR�MCjNJۖ�Q�+L޹,� i�L��Z�����l����W�鹒�J
�̍k̜�A�#J��9�Gi����aAތ��ҭ�;'G�u���,	S�f�Qu3�͕���Xܖ�5nH�m�M���X�DC%�+��ն��xqH�s��0�Nwo}���f�x�M���#)¢`��b�ۋ��y���7�Źs����}�����@      �   =  x��TKR�@]Ϝb.@
�����rb�*���XFӮv�@.�E*���Ҳ�C>.`#Mϼn���4��5��B%�
�8yӓ	���Ä���`�#��9N�S0�[!0c�E��ja��)|(ɛ���)$�B��.m���;AR2��(�lw�%�@@E��PK��u���;�$�O�v�u����8x)0�|�,[��y�0D�,��9�,Y�ѳ���m�v�O�����K*v�,�����D�]���� ���k�g��Bmt��t�b���i�X���o��G;���~��}�Q�F�ص������]�D �����#V��@��V�?D�lv`f_��~Л�5,�6�\����p��\��=�<ӣ�N�*.K6C�,��+����lk�"�*�1��֡�.4�#�|kUpq�[}���仠���6�^Һ�UhW�_s'��H���.<��|g	���ʩ}
wܐ@���Q*�O�����Q�Tܘc��R� �R��Zo���8щ�(�C��,^6������v�缻��uz���5K ���������j�@_���)�"s�=L��k�/�p�;     