<?php

/**
 * Implements of hook_install_tasks().
 */
function germ_install_tasks() {
    $tasks = array(
        'germ_create_terms' => array(
            'display_name' => st('Create taxonomy terms'),
        ),
    );
    return $tasks;
}

/**
 * Implements hook_install_tasks() callback
 */
function germ_create_terms() {
    $terms = array();
    $vocabulary = taxonomy_vocabulary_machine_name_load('type');
    $terms[] = 'Bug';
    $terms[] = 'Task';
    $terms[] = 'Deploy';
    foreach ($terms as $name) {
        $term = new stdClass();
        $term->vid = $vocabulary->vid;
        $term->name = $name;
        taxonomy_term_save($term);
    }
}

