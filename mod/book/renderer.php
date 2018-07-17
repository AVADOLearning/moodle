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

defined('MOODLE_INTERNAL') || die;

/**
 * Book renderer
 *
 * @package    mod_book
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class mod_book_renderer extends plugin_renderer_base {

    /**
     * @param  $chapterurl      - Chapter we wish to redirect to.
     * @return string           - HTML alert containing redirect option.
     * @throws coding_exception
     */
    public function bookmark($chapterurl) {
        $title   = get_string('bookmark_prompt', 'mod_book');
        $confirm = html_writer::link($chapterurl, get_string('bookmark_confirm', 'mod_book'),
            array('class' => 'btn btn-link pull-sm-right'));

        return html_writer::start_div('alert alert-info', array('style' => 'margin-top:70px'))
            . $title
            . $confirm
            . html_writer::end_div();
    }
}
