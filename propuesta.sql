-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2021 a las 05:13:40
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'Proyecto 1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_structure[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_data[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'Proyecto', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_structure[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_data[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'proyecto c', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_structure[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"table_data[]\":[\"tabla_empleadoadm\",\"tabla_empleadodoc\",\"tabla_ingreso\",\"tabla_intereses\",\"tabla_prestacum\",\"tabla_sueldodiario\",\"tabla_sueldointegral\",\"tabla_sueldomes\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'propuesta', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"phpmyadmin\",\"propuesta\",\"proyecto\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"propuesta\",\"table\":\"tabla_empleadoadm\"},{\"db\":\"propuesta\",\"table\":\"tabla_ingreso_a\"},{\"db\":\"propuesta\",\"table\":\"tabla_sueldomes\"},{\"db\":\"propuesta\",\"table\":\"tabla_sueldointegral\"},{\"db\":\"propuesta\",\"table\":\"tabla_sueldodiario\"},{\"db\":\"propuesta\",\"table\":\"tabla_prestacum\"},{\"db\":\"propuesta\",\"table\":\"tabla_intereses\"},{\"db\":\"propuesta\",\"table\":\"tabla_ingreso_d\"},{\"db\":\"propuesta\",\"table\":\"tabla_empleadodoc\"},{\"db\":\"proyecto\",\"table\":\"tabla_empleadoadm\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-08-05 23:55:02', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"ThemeDefault\":\"pmahomme\",\"Console\\/Height\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `propuesta`
--
CREATE DATABASE IF NOT EXISTS `propuesta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `propuesta`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_empleadoadm`
--

CREATE TABLE `tabla_empleadoadm` (
  `ci_adm` int(11) NOT NULL,
  `cod_a` int(11) DEFAULT 1,
  `nombre` varchar(35) NOT NULL,
  `primer_apell` varchar(35) NOT NULL,
  `segund_apell` varchar(35) DEFAULT NULL,
  `Horario` varchar(50) NOT NULL DEFAULT 'DIURNO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_empleadoadm`
--

INSERT INTO `tabla_empleadoadm` (`ci_adm`, `cod_a`, `nombre`, `primer_apell`, `segund_apell`, `Horario`) VALUES
(3675098, 1, 'María', 'Márquez', 'de López', 'DIURNO'),
(4867902, 1, 'Gladys', 'Ojeda', NULL, 'DIURNO'),
(5678014, 1, 'Lily', 'Ginart', 'Vargas', 'DIURNO'),
(8935016, 1, 'Edilberto', 'Pérez', 'Hernández', 'DIURNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_empleadodoc`
--

CREATE TABLE `tabla_empleadodoc` (
  `ci_doc` int(11) NOT NULL,
  `cod_d` int(11) DEFAULT 2,
  `nombre` varchar(35) NOT NULL,
  `primer_apell` varchar(35) NOT NULL,
  `segund_apell` varchar(35) DEFAULT NULL,
  `Horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_empleadodoc`
--

INSERT INTO `tabla_empleadodoc` (`ci_doc`, `cod_d`, `nombre`, `primer_apell`, `segund_apell`, `Horario`) VALUES
(6384927, 2, 'Laura', 'Abreu', 'Torres', 'DIURNO'),
(7957163, 2, 'Héctor', 'Varela', 'Aguirre', 'VESPERTINO'),
(8394359, 2, 'Sara', 'García', NULL, 'DIURNO y VESPERTINO'),
(9462816, 2, 'Aarón', 'Fernández', 'Trujillo', 'NOCTURNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ingreso_a`
--

CREATE TABLE `tabla_ingreso_a` (
  `ida_fecha` int(11) NOT NULL,
  `fecha_ing` date NOT NULL,
  `servic_a` int(2) NOT NULL,
  `dias_v` int(2) DEFAULT 15,
  `ci_adm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_ingreso_a`
--

INSERT INTO `tabla_ingreso_a` (`ida_fecha`, `fecha_ing`, `servic_a`, `dias_v`, `ci_adm`) VALUES
(1, '2012-06-22', 9, 15, 8935016),
(2, '2012-08-01', 9, 15, 4867902),
(3, '2013-05-14', 8, 15, 5678014),
(4, '2015-01-29', 6, 15, 3675098);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ingreso_d`
--

CREATE TABLE `tabla_ingreso_d` (
  `idd_fecha` int(11) NOT NULL,
  `fecha_ing` date NOT NULL,
  `servic_a` int(2) NOT NULL,
  `dias_v` int(2) DEFAULT 30,
  `ci_doc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_ingreso_d`
--

INSERT INTO `tabla_ingreso_d` (`idd_fecha`, `fecha_ing`, `servic_a`, `dias_v`, `ci_doc`) VALUES
(1, '2014-04-14', 7, 30, 9462816),
(2, '2016-06-17', 5, 30, 7957163),
(3, '2018-10-09', 3, 30, 6384927),
(4, '2018-02-28', 3, 30, 8394359);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_intereses`
--

CREATE TABLE `tabla_intereses` (
  `id_inter` int(11) NOT NULL,
  `tasa_inter` double NOT NULL,
  `inter_prest` decimal(19,2) NOT NULL,
  `id_prest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_intereses`
--

INSERT INTO `tabla_intereses` (`id_inter`, `tasa_inter`, `inter_prest`, `id_prest`) VALUES
(1, 31.38, '56.19', 1),
(2, 31.38, '98.97', 2),
(3, 31.08, '442.06', 3),
(4, 31.08, '2803.51', 4),
(5, 40.67, '52006.92', 5),
(6, 47.36, '2762.67', 6),
(7, 47.36, '7889.79', 7),
(8, 47.36, '11748.75', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_prestacum`
--

CREATE TABLE `tabla_prestacum` (
  `id_prest` int(11) NOT NULL,
  `prest_acum` decimal(19,2) NOT NULL,
  `antic_prest` decimal(19,2) DEFAULT NULL,
  `ci_adm` int(11) DEFAULT NULL,
  `ci_doc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_prestacum`
--

INSERT INTO `tabla_prestacum` (`id_prest`, `prest_acum`, `antic_prest`, `ci_adm`, `ci_doc`) VALUES
(1, '2149.07', NULL, 8935016, NULL),
(2, '3784.67', NULL, 4867902, NULL),
(3, '17067.97', '12000.00', 5678014, NULL),
(4, '108243.62', NULL, 3675098, NULL),
(5, '1534504.73', '50000.00', NULL, 9462816),
(6, '70000.11', NULL, NULL, 7957163),
(7, '199910.29', '50000.00', NULL, 6384927),
(8, '297688.07', NULL, NULL, 8394359);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldodiario`
--

CREATE TABLE `tabla_sueldodiario` (
  `id_sueldod` int(11) NOT NULL,
  `sueldo_diario` decimal(19,2) NOT NULL,
  `alicuotas_u` decimal(19,2) NOT NULL,
  `alicuotas_v` decimal(19,2) NOT NULL,
  `id_sueldom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldodiario`
--

INSERT INTO `tabla_sueldodiario` (`id_sueldod`, `sueldo_diario`, `alicuotas_u`, `alicuotas_v`, `id_sueldom`) VALUES
(1, '36.00', '6.00', '0.70', 1),
(2, '36.03', '6.00', '1.50', 2),
(3, '89.01', '14.83', '3.71', 3),
(4, '369.00', '61.50', '18.45', 4),
(5, '450.00', '75.00', '22.50', 5),
(6, '495.00', '82.50', '24.75', 6),
(7, '606.67', '101.11', '30.33', 7),
(8, '1666.67', '277.78', '92.59', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldointegral`
--

CREATE TABLE `tabla_sueldointegral` (
  `id_sueldoi` int(11) NOT NULL,
  `sueldo_integr` decimal(19,2) NOT NULL,
  `prest_mes` decimal(19,2) NOT NULL,
  `dias_prest` int(11) DEFAULT 15,
  `id_sueldom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldointegral`
--

INSERT INTO `tabla_sueldointegral` (`id_sueldoi`, `sueldo_integr`, `prest_mes`, `dias_prest`, `id_sueldom`) VALUES
(1, '42.70', '213.50', 15, 1),
(2, '43.65', '263.14', 15, 2),
(3, '107.55', '1635.61', 15, 3),
(4, '448.95', '1795.80', 15, 4),
(5, '547.50', '6734.25', 15, 5),
(6, '602.25', '9033.75', 15, 6),
(7, '738.11', '11071.67', 15, 7),
(8, '2037.04', '16296.30', 15, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldomes`
--

CREATE TABLE `tabla_sueldomes` (
  `id_sueldom` int(11) NOT NULL,
  `sueldo_mes` decimal(19,2) NOT NULL,
  `año` date NOT NULL,
  `ida_fecha` int(11) DEFAULT NULL,
  `idd_fecha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldomes`
--

INSERT INTO `tabla_sueldomes` (`id_sueldom`, `sueldo_mes`, `año`, `ida_fecha`, `idd_fecha`) VALUES
(1, '1080.00', '2012-07-22', 1, NULL),
(2, '1080.88', '2012-09-01', 2, NULL),
(3, '2300.00', '2012-06-14', 3, NULL),
(4, '11070.00', '2015-02-28', 4, NULL),
(5, '13500.00', '2014-05-14', NULL, 1),
(6, '14850.00', '2016-07-17', NULL, 2),
(7, '18200.00', '2018-11-09', NULL, 3),
(8, '50000.00', '2018-03-28', NULL, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_empleadoadm`
--
ALTER TABLE `tabla_empleadoadm`
  ADD PRIMARY KEY (`ci_adm`);

--
-- Indices de la tabla `tabla_empleadodoc`
--
ALTER TABLE `tabla_empleadodoc`
  ADD PRIMARY KEY (`ci_doc`);

--
-- Indices de la tabla `tabla_ingreso_a`
--
ALTER TABLE `tabla_ingreso_a`
  ADD PRIMARY KEY (`ida_fecha`),
  ADD KEY `ci_adm` (`ci_adm`);

--
-- Indices de la tabla `tabla_ingreso_d`
--
ALTER TABLE `tabla_ingreso_d`
  ADD PRIMARY KEY (`idd_fecha`),
  ADD KEY `ci_doc` (`ci_doc`);

--
-- Indices de la tabla `tabla_intereses`
--
ALTER TABLE `tabla_intereses`
  ADD PRIMARY KEY (`id_inter`),
  ADD KEY `id_prest` (`id_prest`);

--
-- Indices de la tabla `tabla_prestacum`
--
ALTER TABLE `tabla_prestacum`
  ADD PRIMARY KEY (`id_prest`),
  ADD KEY `ci_adm` (`ci_adm`),
  ADD KEY `ci_doc` (`ci_doc`);

--
-- Indices de la tabla `tabla_sueldodiario`
--
ALTER TABLE `tabla_sueldodiario`
  ADD PRIMARY KEY (`id_sueldod`),
  ADD KEY `id_sueldom` (`id_sueldom`);

--
-- Indices de la tabla `tabla_sueldointegral`
--
ALTER TABLE `tabla_sueldointegral`
  ADD PRIMARY KEY (`id_sueldoi`),
  ADD KEY `id_sueldom` (`id_sueldom`);

--
-- Indices de la tabla `tabla_sueldomes`
--
ALTER TABLE `tabla_sueldomes`
  ADD PRIMARY KEY (`id_sueldom`),
  ADD KEY `ida_fecha` (`ida_fecha`),
  ADD KEY `idd_fecha` (`idd_fecha`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_ingreso_a`
--
ALTER TABLE `tabla_ingreso_a`
  MODIFY `ida_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tabla_ingreso_d`
--
ALTER TABLE `tabla_ingreso_d`
  MODIFY `idd_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tabla_intereses`
--
ALTER TABLE `tabla_intereses`
  MODIFY `id_inter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabla_prestacum`
--
ALTER TABLE `tabla_prestacum`
  MODIFY `id_prest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabla_sueldodiario`
--
ALTER TABLE `tabla_sueldodiario`
  MODIFY `id_sueldod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabla_sueldointegral`
--
ALTER TABLE `tabla_sueldointegral`
  MODIFY `id_sueldoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabla_sueldomes`
--
ALTER TABLE `tabla_sueldomes`
  MODIFY `id_sueldom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla_ingreso_a`
--
ALTER TABLE `tabla_ingreso_a`
  ADD CONSTRAINT `tabla_ingreso_a_ibfk_1` FOREIGN KEY (`ci_adm`) REFERENCES `tabla_empleadoadm` (`ci_adm`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_ingreso_d`
--
ALTER TABLE `tabla_ingreso_d`
  ADD CONSTRAINT `tabla_ingreso_d_ibfk_1` FOREIGN KEY (`ci_doc`) REFERENCES `tabla_empleadodoc` (`ci_doc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_intereses`
--
ALTER TABLE `tabla_intereses`
  ADD CONSTRAINT `tabla_intereses_ibfk_1` FOREIGN KEY (`id_prest`) REFERENCES `tabla_prestacum` (`id_prest`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_prestacum`
--
ALTER TABLE `tabla_prestacum`
  ADD CONSTRAINT `tabla_prestacum_ibfk_1` FOREIGN KEY (`ci_adm`) REFERENCES `tabla_empleadoadm` (`ci_adm`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tabla_prestacum_ibfk_2` FOREIGN KEY (`ci_doc`) REFERENCES `tabla_empleadodoc` (`ci_doc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldodiario`
--
ALTER TABLE `tabla_sueldodiario`
  ADD CONSTRAINT `tabla_sueldodiario_ibfk_1` FOREIGN KEY (`id_sueldom`) REFERENCES `tabla_sueldomes` (`id_sueldom`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldointegral`
--
ALTER TABLE `tabla_sueldointegral`
  ADD CONSTRAINT `tabla_sueldointegral_ibfk_1` FOREIGN KEY (`id_sueldom`) REFERENCES `tabla_sueldomes` (`id_sueldom`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldomes`
--
ALTER TABLE `tabla_sueldomes`
  ADD CONSTRAINT `tabla_sueldomes_ibfk_1` FOREIGN KEY (`ida_fecha`) REFERENCES `tabla_ingreso_a` (`ida_fecha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tabla_sueldomes_ibfk_2` FOREIGN KEY (`idd_fecha`) REFERENCES `tabla_ingreso_d` (`idd_fecha`) ON UPDATE CASCADE;
--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_empleadoadm`
--

CREATE TABLE `tabla_empleadoadm` (
  `ci_adm` int(11) NOT NULL,
  `cod_a` int(11) DEFAULT 1,
  `nombre` varchar(35) NOT NULL,
  `primer_apell` varchar(35) NOT NULL,
  `segund_apell` varchar(35) DEFAULT NULL,
  `Horario` varchar(50) NOT NULL DEFAULT 'DIURNO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_empleadoadm`
--

INSERT INTO `tabla_empleadoadm` (`ci_adm`, `cod_a`, `nombre`, `primer_apell`, `segund_apell`, `Horario`) VALUES
(3675098, 1, 'María', 'Márquez', 'de López', 'DIURNO'),
(4867902, 1, 'Gladys', 'Ojeda', NULL, 'DIURNO'),
(5678014, 1, 'Lily', 'Ginart', 'Vargas', 'DIURNO'),
(8935016, 1, 'Edilberto', 'Pérez', 'Hernández', 'DIURNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_empleadodoc`
--

CREATE TABLE `tabla_empleadodoc` (
  `ci_doc` int(11) NOT NULL,
  `cod_d` int(11) DEFAULT 2,
  `nombre` varchar(35) NOT NULL,
  `primer_apell` varchar(35) NOT NULL,
  `segund_apell` varchar(35) DEFAULT NULL,
  `Horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_empleadodoc`
--

INSERT INTO `tabla_empleadodoc` (`ci_doc`, `cod_d`, `nombre`, `primer_apell`, `segund_apell`, `Horario`) VALUES
(6384927, 2, 'Laura', 'Abreu', 'Torres', 'DIURNO'),
(7957163, 2, 'Héctor', 'Varela', 'Aguirre', 'VESPERTINO'),
(8394359, 2, 'Sara', 'García', NULL, 'NOCTURNO'),
(9462816, 2, 'Aarón', 'Fernández', 'Trujillo', 'DIURNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ingreso`
--

CREATE TABLE `tabla_ingreso` (
  `fecha_ing` date NOT NULL,
  `servic_a` int(2) NOT NULL,
  `dias_v` int(2) DEFAULT 15,
  `ci_adm` int(11) DEFAULT NULL,
  `ci_doc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_ingreso`
--

INSERT INTO `tabla_ingreso` (`fecha_ing`, `servic_a`, `dias_v`, `ci_adm`, `ci_doc`) VALUES
('2012-06-22', 9, 15, 8935016, NULL),
('2012-08-01', 9, 15, 4867902, NULL),
('2013-05-14', 8, 15, 5678014, NULL),
('2015-01-29', 6, 15, 3675098, NULL),
('2015-03-10', 6, 15, NULL, 9462816),
('2015-06-29', 6, 15, NULL, 7957163),
('2016-02-08', 5, 15, NULL, 6384927),
('2017-09-13', 4, 15, NULL, 8394359);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_intereses`
--

CREATE TABLE `tabla_intereses` (
  `tasa_inter` int(11) NOT NULL,
  `inter_prest` double NOT NULL,
  `prest_acum` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_intereses`
--

INSERT INTO `tabla_intereses` (`tasa_inter`, `inter_prest`, `prest_acum`) VALUES
(35, 568.93, 17067.97),
(37, 6663.67, 199910.29),
(38, 3608.12, 108243.62),
(39, 126.15, 3784.67),
(40, 71.64, 2149.07),
(41, 2333.33, 70000.11),
(43, 9922.94, 297688.07),
(44, 51150.67, 1534504.73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_prestacum`
--

CREATE TABLE `tabla_prestacum` (
  `prest_acum` double NOT NULL,
  `antic_prest` double DEFAULT NULL,
  `ci_adm` int(11) DEFAULT NULL,
  `ci_doc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_prestacum`
--

INSERT INTO `tabla_prestacum` (`prest_acum`, `antic_prest`, `ci_adm`, `ci_doc`) VALUES
(2149.07, NULL, 8935016, NULL),
(3784.67, NULL, 4867902, NULL),
(17067.97, 12000, 5678014, NULL),
(70000.11, NULL, NULL, 7957163),
(108243.62, NULL, 3675098, NULL),
(199910.29, 50000, NULL, 6384927),
(297688.07, NULL, NULL, 8394359),
(1534504.73, 50000, NULL, 9462816);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldodiario`
--

CREATE TABLE `tabla_sueldodiario` (
  `sueldo_diario` double NOT NULL,
  `alicuotas_u` double NOT NULL,
  `alicuotas_v` double NOT NULL,
  `sueldo_mes` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldodiario`
--

INSERT INTO `tabla_sueldodiario` (`sueldo_diario`, `alicuotas_u`, `alicuotas_v`, `sueldo_mes`) VALUES
(36, 6, 0.7, 1080),
(36.03, 6, 1.5, 1080.88),
(89.01, 14.83, 3.71, 2300),
(369, 61.5, 18.45, 11070),
(450, 75, 22.5, 13500),
(495, 82.5, 24.75, 14850),
(606.67, 101.11, 30.33, 18200),
(1666.67, 277.78, 92.59, 50000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldointegral`
--

CREATE TABLE `tabla_sueldointegral` (
  `sueldo_integr` double NOT NULL,
  `prest_mes` double NOT NULL,
  `dias_prest` int(11) DEFAULT 15,
  `sueldo_mes` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldointegral`
--

INSERT INTO `tabla_sueldointegral` (`sueldo_integr`, `prest_mes`, `dias_prest`, `sueldo_mes`) VALUES
(42.7, 213.5, 15, 1080),
(43.65, 263.14, 15, 1080.88),
(107.55, 1635.61, 15, 2300),
(448.95, 1795.8, 15, 11070),
(547.5, 6734.25, 15, 13500),
(602.25, 9033.75, 15, 14850),
(738.11, 11071.67, 15, 18200),
(2037.04, 16296.3, 15, 50000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_sueldomes`
--

CREATE TABLE `tabla_sueldomes` (
  `sueldo_mes` double NOT NULL,
  `año` year(4) NOT NULL,
  `fecha_ing` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_sueldomes`
--

INSERT INTO `tabla_sueldomes` (`sueldo_mes`, `año`, `fecha_ing`) VALUES
(1080, 2012, '2012-06-22'),
(1080.88, 2012, '2012-08-01'),
(2300, 2013, '2013-05-14'),
(11070, 2015, '2015-01-29'),
(13500, 2015, '2015-03-10'),
(14850, 2015, '2015-06-29'),
(18200, 2016, '2016-02-08'),
(50000, 2017, '2017-09-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_empleadoadm`
--
ALTER TABLE `tabla_empleadoadm`
  ADD PRIMARY KEY (`ci_adm`);

--
-- Indices de la tabla `tabla_empleadodoc`
--
ALTER TABLE `tabla_empleadodoc`
  ADD PRIMARY KEY (`ci_doc`);

--
-- Indices de la tabla `tabla_ingreso`
--
ALTER TABLE `tabla_ingreso`
  ADD PRIMARY KEY (`fecha_ing`),
  ADD KEY `ci_adm` (`ci_adm`),
  ADD KEY `ci_doc` (`ci_doc`);

--
-- Indices de la tabla `tabla_intereses`
--
ALTER TABLE `tabla_intereses`
  ADD PRIMARY KEY (`tasa_inter`),
  ADD KEY `prest_acum` (`prest_acum`);

--
-- Indices de la tabla `tabla_prestacum`
--
ALTER TABLE `tabla_prestacum`
  ADD PRIMARY KEY (`prest_acum`),
  ADD KEY `ci_adm` (`ci_adm`),
  ADD KEY `ci_doc` (`ci_doc`);

--
-- Indices de la tabla `tabla_sueldodiario`
--
ALTER TABLE `tabla_sueldodiario`
  ADD PRIMARY KEY (`sueldo_diario`),
  ADD KEY `sueldo_mes` (`sueldo_mes`);

--
-- Indices de la tabla `tabla_sueldointegral`
--
ALTER TABLE `tabla_sueldointegral`
  ADD PRIMARY KEY (`sueldo_integr`),
  ADD KEY `sueldo_mes` (`sueldo_mes`);

--
-- Indices de la tabla `tabla_sueldomes`
--
ALTER TABLE `tabla_sueldomes`
  ADD PRIMARY KEY (`sueldo_mes`),
  ADD KEY `fecha_ing` (`fecha_ing`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla_ingreso`
--
ALTER TABLE `tabla_ingreso`
  ADD CONSTRAINT `tabla_ingreso_ibfk_1` FOREIGN KEY (`ci_adm`) REFERENCES `tabla_empleadoadm` (`ci_adm`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tabla_ingreso_ibfk_2` FOREIGN KEY (`ci_doc`) REFERENCES `tabla_empleadodoc` (`ci_doc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_intereses`
--
ALTER TABLE `tabla_intereses`
  ADD CONSTRAINT `tabla_intereses_ibfk_1` FOREIGN KEY (`prest_acum`) REFERENCES `tabla_prestacum` (`prest_acum`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_prestacum`
--
ALTER TABLE `tabla_prestacum`
  ADD CONSTRAINT `tabla_prestacum_ibfk_1` FOREIGN KEY (`ci_adm`) REFERENCES `tabla_empleadoadm` (`ci_adm`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tabla_prestacum_ibfk_2` FOREIGN KEY (`ci_doc`) REFERENCES `tabla_empleadodoc` (`ci_doc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldodiario`
--
ALTER TABLE `tabla_sueldodiario`
  ADD CONSTRAINT `tabla_sueldodiario_ibfk_1` FOREIGN KEY (`sueldo_mes`) REFERENCES `tabla_sueldomes` (`sueldo_mes`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldointegral`
--
ALTER TABLE `tabla_sueldointegral`
  ADD CONSTRAINT `tabla_sueldointegral_ibfk_1` FOREIGN KEY (`sueldo_mes`) REFERENCES `tabla_sueldomes` (`sueldo_mes`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_sueldomes`
--
ALTER TABLE `tabla_sueldomes`
  ADD CONSTRAINT `tabla_sueldomes_ibfk_1` FOREIGN KEY (`fecha_ing`) REFERENCES `tabla_ingreso` (`fecha_ing`) ON UPDATE CASCADE;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
