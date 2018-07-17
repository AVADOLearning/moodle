<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.
/**
 * Book module upgrade code
 *
 * @package    mod_book
 * @copyright  2009-2011 Petr Skoda {@link http://skodak.org}
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die;

/**
 * Book module upgrade task
 *
 * @param int $oldversion the version we are upgrading from
 * @return bool
 */
function xmldb_book_upgrade($oldversion) {
    global $DB;
    $dbman = $DB->get_manager();

    /// Moodle v3.1.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.2.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.3.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.4.0 release upgrade line.
    // Put any upgrade step following this.

    // Automatically generated Moodle v3.5.0 release upgrade line.
    // Put any upgrade step following this.

    $table = new xmldb_table('book_progress');
    $table->addField(new xmldb_field('id',XMLDB_TYPE_INTEGER,'10,0',true,true,true));
    $table->addField(new xmldb_field('userid',XMLDB_TYPE_INTEGER,'10,0',true,true));
    $table->addField(new xmldb_field('bookid',XMLDB_TYPE_INTEGER,'10,0',true,true));
    $table->addField(new xmldb_field('chapterid',XMLDB_TYPE_INTEGER,'10,0',true,false));
    $table->addKey(new xmldb_key('primary',XMLDB_KEY_PRIMARY,['id']));
    $table->addKey(new xmldb_key('fk_userid',XMLDB_KEY_FOREIGN,['userid'],'user', ['id']));
    $table->addKey(new xmldb_key('userid_bookid',XMLDB_KEY_UNIQUE,['userid,bookid']));
    $table->addKey(new xmldb_key('fk_bookid',XMLDB_KEY_FOREIGN,['bookid'],'book', ['id']));

    if ($oldversion <= 2018071700) {
        if (!$dbman->table_exists('book_progress')) {
            $dbman->create_table($table);
        }
    }

    return true;
}
