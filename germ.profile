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
    // bug type
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

    // bug status
    $terms = array();
    $vocabulary = taxonomy_vocabulary_machine_name_load('status');
    $terms[] = 'Open';
    $terms[] = 'In Progress';
    $terms[] = 'Closed';
    foreach ($terms as $name) {
        $term = new stdClass();
        $term->vid = $vocabulary->vid;
        $term->name = $name;
        taxonomy_term_save($term);
    }
    
    // bug priority
    $terms = array();
    $vocabulary = taxonomy_vocabulary_machine_name_load('priority');
    $terms[] = 'Low';
    $terms[] = 'High';
    $terms[] = 'Urgent';
    foreach ($terms as $name) {
        $term = new stdClass();
        $term->vid = $vocabulary->vid;
        $term->name = $name;
        taxonomy_term_save($term);
    }

    // create a sample project
    $node = new stdClass();
    $node->type = "project";
    $node->title = "Druvis";
    $node->language = LANGUAGE_NONE;
    $node->uid = 1;
    $node->path = array('alias' => 'project/druvis');
    node_object_prepare($node);
    $node->body[$node->language][0]['value'] = '<p>Druvis is a theme development studio which specialized in creating high quality Drupal themes.</p>';
    $node->body[$node->language][0]['format'] = 'rich_text_editor';
    $node = node_submit($node);
    node_save($node);

    // create a sample roadmap          
    $node = new stdClass();
    $node->type = "roadmap";
    $node->title = "Free Themes pahse 1";
    $node->language = LANGUAGE_NONE;
    $node->uid = 1;
    $node->path = array('alias' => 'roadmap/free-themes');
    node_object_prepare($node);
    $node->field_start_date['und']['0'] = array(
          'value' => '2012-01-20 00:00:00',
          'value2' => '2012-01-26 00:00:00',
          'timezone' => 'Asia/Calcutta',
          'timezone_db' => 'Asia/Calcutta',
          'date_type' => 'datetime',
        );
    
    $node = node_submit($node);
    node_save($node);    
}

