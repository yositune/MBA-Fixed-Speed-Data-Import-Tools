--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: curr_avail; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_avail (
    unit_id integer,
    location_id integer,
    dtime timestamp without time zone,
    successes smallint,
    failures smallint,
    validated boolean DEFAULT false
);


ALTER TABLE curr_avail OWNER TO yositune;

--
-- Name: curr_availfail; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_availfail (
    unit_id integer,
    dtime timestamp without time zone,
    lasthop1 character varying,
    lasthop2 character varying,
    lasthop3 character varying,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_availfail OWNER TO yositune;

--
-- Name: curr_dlping; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_dlping (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    rtt_avg integer,
    rtt_min integer,
    rtt_max integer,
    rtt_std integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_dlping OWNER TO yositune;

--
-- Name: curr_dns; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_dns (
    unit_id integer,
    dtime timestamp without time zone,
    nameserver character varying,
    lookup_host character varying,
    response_ip character varying,
    rtt integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_dns OWNER TO yositune;

--
-- Name: curr_httpget; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httpget (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httpget OWNER TO yositune;

--
-- Name: curr_httpgetmt; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httpgetmt (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httpgetmt OWNER TO yositune;

--
-- Name: curr_httpgetmt6; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httpgetmt6 (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httpgetmt6 OWNER TO yositune;

--
-- Name: curr_httppost; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httppost (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httppost OWNER TO yositune;

--
-- Name: curr_httppostmt; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httppostmt (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httppostmt OWNER TO yositune;

--
-- Name: curr_httppostmt6; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_httppostmt6 (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_httppostmt6 OWNER TO yositune;

--
-- Name: curr_netusage; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_netusage (
    unit_id integer,
    dtime timestamp without time zone,
    wan_rx_bytes bigint,
    wan_tx_bytes bigint,
    sk_rx_bytes bigint,
    sk_tx_bytes bigint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_netusage OWNER TO yositune;

--
-- Name: curr_ping; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_ping (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    rtt_avg integer,
    rtt_min integer,
    rtt_max integer,
    rtt_std integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_ping OWNER TO yositune;

--
-- Name: curr_ping6; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_ping6 (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    rtt_avg integer,
    rtt_min integer,
    rtt_max integer,
    rtt_std integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_ping6 OWNER TO yositune;

--
-- Name: curr_udpjitter; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_udpjitter (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    packet_size integer,
    stream_rate integer,
    duration integer,
    packets_up_sent integer,
    packets_down_sent integer,
    packets_up_recv integer,
    packets_down_recv integer,
    jitter_up integer,
    jitter_down integer,
    latency integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_udpjitter OWNER TO yositune;

--
-- Name: curr_udplatency; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_udplatency (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    rtt_avg integer,
    rtt_min integer,
    rtt_max integer,
    rtt_std integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_udplatency OWNER TO yositune;

--
-- Name: curr_ulping; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_ulping (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    rtt_avg integer,
    rtt_min integer,
    rtt_max integer,
    rtt_std integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_ulping OWNER TO yositune;

--
-- Name: curr_videostream; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_videostream (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    downthrpt integer,
    downjitter integer,
    latency integer,
    jitter integer,
    buffer_underruns integer,
    buffer_delay integer,
    buffer_filltime integer,
    duration integer,
    bitrate integer,
    buffer_size integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_videostream OWNER TO yositune;

--
-- Name: curr_webget; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_webget (
    unit_id integer DEFAULT 0 NOT NULL,
    dtime timestamp without time zone,
    target character varying(200) DEFAULT ''::character varying NOT NULL,
    address character varying(45) DEFAULT NULL::character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    objects integer,
    threads integer,
    requests integer,
    connections integer,
    reused_connections integer,
    lookups integer,
    request_total_time integer,
    request_min_time integer,
    request_avg_time integer,
    request_max_time integer,
    ttfb_total integer,
    ttfb_min integer,
    ttfb_avg integer,
    ttfb_max integer,
    lookup_total_time integer,
    lookup_min_time integer,
    lookup_avg_time integer,
    lookup_max_time integer,
    successes smallint,
    failures smallint,
    location_id integer DEFAULT 0 NOT NULL,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_webget OWNER TO yositune;

--
-- Name: curr_webgetobjects; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_webgetobjects (
    unit_id integer,
    dtime timestamp without time zone,
    referrer character varying,
    target character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_webgetobjects OWNER TO yositune;

--
-- Name: curr_www; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE curr_www (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean DEFAULT false,
    year numeric
);


ALTER TABLE curr_www OWNER TO yositune;

--
-- Name: tmp; Type: TABLE; Schema: public; Owner: yositune
--

CREATE TABLE tmp (
    unit_id integer,
    dtime timestamp without time zone,
    target character varying,
    address character varying,
    fetch_time integer,
    bytes_total integer,
    bytes_sec integer,
    bytes_sec_interval integer,
    warmup_time integer,
    warmup_bytes integer,
    sequence integer,
    threads integer,
    successes smallint,
    failures smallint,
    location_id integer,
    validated boolean,
    year numeric
);


ALTER TABLE tmp OWNER TO yositune;

--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT USAGE ON SCHEMA public TO readonly;
GRANT ALL ON SCHEMA public TO sarah;


--
-- Name: curr_avail; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_avail FROM PUBLIC;
REVOKE ALL ON TABLE curr_avail FROM yositune;
GRANT ALL ON TABLE curr_avail TO yositune;
GRANT SELECT ON TABLE curr_avail TO sarah;


--
-- Name: curr_availfail; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_availfail FROM PUBLIC;
REVOKE ALL ON TABLE curr_availfail FROM yositune;
GRANT ALL ON TABLE curr_availfail TO yositune;
GRANT SELECT ON TABLE curr_availfail TO sarah;


--
-- Name: curr_dlping; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_dlping FROM PUBLIC;
REVOKE ALL ON TABLE curr_dlping FROM yositune;
GRANT ALL ON TABLE curr_dlping TO yositune;
GRANT SELECT ON TABLE curr_dlping TO sarah;


--
-- Name: curr_dns; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_dns FROM PUBLIC;
REVOKE ALL ON TABLE curr_dns FROM yositune;
GRANT ALL ON TABLE curr_dns TO yositune;
GRANT SELECT ON TABLE curr_dns TO sarah;


--
-- Name: curr_httpget; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httpget FROM PUBLIC;
REVOKE ALL ON TABLE curr_httpget FROM yositune;
GRANT ALL ON TABLE curr_httpget TO yositune;
GRANT SELECT ON TABLE curr_httpget TO sarah;


--
-- Name: curr_httpgetmt; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httpgetmt FROM PUBLIC;
REVOKE ALL ON TABLE curr_httpgetmt FROM yositune;
GRANT ALL ON TABLE curr_httpgetmt TO yositune;
GRANT SELECT ON TABLE curr_httpgetmt TO sarah;


--
-- Name: curr_httpgetmt6; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httpgetmt6 FROM PUBLIC;
REVOKE ALL ON TABLE curr_httpgetmt6 FROM yositune;
GRANT ALL ON TABLE curr_httpgetmt6 TO yositune;
GRANT SELECT ON TABLE curr_httpgetmt6 TO sarah;


--
-- Name: curr_httppost; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httppost FROM PUBLIC;
REVOKE ALL ON TABLE curr_httppost FROM yositune;
GRANT ALL ON TABLE curr_httppost TO yositune;
GRANT SELECT ON TABLE curr_httppost TO sarah;


--
-- Name: curr_httppostmt; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httppostmt FROM PUBLIC;
REVOKE ALL ON TABLE curr_httppostmt FROM yositune;
GRANT ALL ON TABLE curr_httppostmt TO yositune;
GRANT SELECT ON TABLE curr_httppostmt TO sarah;


--
-- Name: curr_httppostmt6; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_httppostmt6 FROM PUBLIC;
REVOKE ALL ON TABLE curr_httppostmt6 FROM yositune;
GRANT ALL ON TABLE curr_httppostmt6 TO yositune;
GRANT SELECT ON TABLE curr_httppostmt6 TO sarah;


--
-- Name: curr_netusage; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_netusage FROM PUBLIC;
REVOKE ALL ON TABLE curr_netusage FROM yositune;
GRANT ALL ON TABLE curr_netusage TO yositune;
GRANT SELECT ON TABLE curr_netusage TO sarah;


--
-- Name: curr_ping; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_ping FROM PUBLIC;
REVOKE ALL ON TABLE curr_ping FROM yositune;
GRANT ALL ON TABLE curr_ping TO yositune;
GRANT SELECT ON TABLE curr_ping TO sarah;


--
-- Name: curr_ping6; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_ping6 FROM PUBLIC;
REVOKE ALL ON TABLE curr_ping6 FROM yositune;
GRANT ALL ON TABLE curr_ping6 TO yositune;
GRANT SELECT ON TABLE curr_ping6 TO sarah;


--
-- Name: curr_udpjitter; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_udpjitter FROM PUBLIC;
REVOKE ALL ON TABLE curr_udpjitter FROM yositune;
GRANT ALL ON TABLE curr_udpjitter TO yositune;
GRANT SELECT ON TABLE curr_udpjitter TO sarah;


--
-- Name: curr_udplatency; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_udplatency FROM PUBLIC;
REVOKE ALL ON TABLE curr_udplatency FROM yositune;
GRANT ALL ON TABLE curr_udplatency TO yositune;
GRANT SELECT ON TABLE curr_udplatency TO sarah;


--
-- Name: curr_ulping; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_ulping FROM PUBLIC;
REVOKE ALL ON TABLE curr_ulping FROM yositune;
GRANT ALL ON TABLE curr_ulping TO yositune;
GRANT SELECT ON TABLE curr_ulping TO sarah;


--
-- Name: curr_videostream; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_videostream FROM PUBLIC;
REVOKE ALL ON TABLE curr_videostream FROM yositune;
GRANT ALL ON TABLE curr_videostream TO yositune;
GRANT SELECT ON TABLE curr_videostream TO sarah;


--
-- Name: curr_webget; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_webget FROM PUBLIC;
REVOKE ALL ON TABLE curr_webget FROM yositune;
GRANT ALL ON TABLE curr_webget TO yositune;
GRANT SELECT ON TABLE curr_webget TO sarah;


--
-- Name: curr_webgetobjects; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_webgetobjects FROM PUBLIC;
REVOKE ALL ON TABLE curr_webgetobjects FROM yositune;
GRANT ALL ON TABLE curr_webgetobjects TO yositune;
GRANT SELECT ON TABLE curr_webgetobjects TO sarah;


--
-- Name: curr_www; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE curr_www FROM PUBLIC;
REVOKE ALL ON TABLE curr_www FROM yositune;
GRANT ALL ON TABLE curr_www TO yositune;
GRANT SELECT ON TABLE curr_www TO sarah;


--
-- Name: tmp; Type: ACL; Schema: public; Owner: yositune
--

REVOKE ALL ON TABLE tmp FROM PUBLIC;
REVOKE ALL ON TABLE tmp FROM yositune;
GRANT ALL ON TABLE tmp TO yositune;
GRANT SELECT ON TABLE tmp TO readonly;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: yositune
--

ALTER DEFAULT PRIVILEGES FOR ROLE yositune IN SCHEMA public REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE yositune IN SCHEMA public REVOKE ALL ON TABLES  FROM yositune;
ALTER DEFAULT PRIVILEGES FOR ROLE yositune IN SCHEMA public GRANT SELECT ON TABLES  TO readonly;


--
-- PostgreSQL database dump complete
--

