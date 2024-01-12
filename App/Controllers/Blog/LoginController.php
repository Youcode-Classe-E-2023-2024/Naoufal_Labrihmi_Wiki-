<?php

namespace App\Controllers\Blog;

use System\Controller;

class LoginController extends Controller
{
    /**
    * Display Login Form
    *
    * @return mixed
    */
    public function index()
    {
        $this->blogLayout->title('Login');

        $loginModel = $this->load->model('Login');

        // disable sidebar
        $this->blogLayout->disable('sidebar');

        if ($loginModel->isLogged()) {
            return $this->url->redirectTo('/');
        }

        $data['errors'] = $this->errors;

        $view = $this->view->render('blog/users/login', $data);

        return $this->blogLayout->render($view);
    }

    /**
 * Submit Login form
 *
 * @return mixed
 */
public function submit()
{
    if ($this->isValid()) {
        $loginModel = $this->load->model('Login');

        $loggedInUser = $loginModel->user();

        if ($this->request->post('remember')) {
            // save login data in cookie
            $this->cookie->set('login', $loggedInUser->code);
        } else {
            // save login data in session
            $this->session->set('login', $loggedInUser->code);
        }

        $json = [];

        $json['success'] = 'Welcome Back ' . $loggedInUser->first_name;

        // Check if the logged-in user is a Super Administrator
        if ($loggedInUser->users_group_id == 1) {
            // Super Administrator - redirect to dashboard
            $json['redirectTo'] = $this->url->link('/admin/dashboard');
        } else {
            // Regular user - redirect to the home page or another appropriate page
            $json['redirectTo'] = $this->url->link('/');
        }

        return $this->json($json);
    } else {
        $json = [];

        $json['errors'] = implode('<br>', $this->errors);

        return $this->json($json);
    }
}


    /**
    * Validate Login Form
    *
    * @return bool
    */
    private function isValid()
    {
        $email = $this->request->post('email');
        $password = $this->request->post('password');

        if (! $email) {
            $this->errors[] = 'Please Insert Email address';
        } elseif (! filter_var($email , FILTER_VALIDATE_EMAIL)) {
            $this->errors[] = 'Please Insert Valid Email';
        }

        if (! $password) {
            $this->errors[] = 'Please Insert Password';
        }

        if (! $this->errors) {
            $loginModel = $this->load->model('Login');

            if (! $loginModel->isValidLogin($email, $password)) {
                $this->errors[] = 'Invalid Login Data';
            }
        }

        return empty($this->errors);
    }
}