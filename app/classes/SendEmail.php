<?php
class SendEmail {

    public function fire($job, $data)
    {
        //
			Mail::send('emails.resetpw', $data, function($message)
			{
			    $message->from('info@bancoink.com', 'Bancoink');
			    $message->to('jefersonpatino@yahoo.es','Jeffer Rivera')->subject('Restablecer Password Bancoink');
			});

    }

}