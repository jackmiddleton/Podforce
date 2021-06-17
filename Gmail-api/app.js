const nodemailer = require('nodemailer')
const { google } = require('googleapis')

const CLIENT_ID = '707926783080-t4l9rnuuijhrae07g1lv70jufnnvc23u.apps.googleusercontent.com'
const CLIENT_SECRET= 'cmmqEYC8S3NqqYaJq2ovYl51'
const REDIRECT_URI = 'https://developers.google.com/oauthplayground';
const REFRESH_TOKEN = '1//047iV2nzLoj5GCgYIARAAGAQSNwF-L9IrEzb2LzLPlCYGE-TQFZIF7gg5k5v9zz_2un2CNYhhRt9UsdneZHWit-YwxXjpju0lNk4';

const oAuth2Client = new google.auth.OAuth2(CLIENT_ID, CLIENT_SECRET, REDIRECT_URI)
oAuth2Client.setCredentials({ refresh_token: REFRESH_TOKEN })

async function sendMail() {

  try {
    const accessToken = await oAuth2Client.getAccessToken()

    const transport = nodemailer.createTransport({
      service:'gmail',
      auth: {
        type: 'OAuth2',
        user: 'hello@jackmiddleton.co',
        clientId: CLIENT_ID,
        clientSecret: CLIENT_SECRET,
        refreshToken: REFRESH_TOKEN,
        accessToken: accessToken

      }
    })

const mailOptions = {
  from: 'hello@jackmiddleton.co',
  to: 'hello@jackmiddleton.co',
  subject: "hello from Podforce gmail API",
  text: 'Hello from gmail Podforce API',
  html: '<h1>Hello from gmail Podforce API<h1/>',
};

const result = await transport.sendMail(mailOptions)
return result

  } catch (error) {
    return error
  }
}

sendMail().then(result => console.log('Email sent...',result))
.catch(error => console.log(error.message))










