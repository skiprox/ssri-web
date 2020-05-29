// The modules
import Layout from 'components/Layout';
import WebGLCanvas from 'components/modules/WebGLCanvas';

export default function Home(context) {
  return (
    <Layout>
      <WebGLCanvas className="negative-z" />
      <img src="/images/woman2.png" className="fixed negative-z womanTwo"></img>
      <img src="/images/men.png" className="fixed negative-z men"></img>
      <img src="/images/woman1.png" className="fixed negative-z womanOne"></img>
      <figure className="Face negative-z"></figure>
      <section className="Container vh-100">
        <h4 className="subheader subheader--top absolute w-100 tc">surf systems regional incorporated</h4>
        <img src="/images/logo.png" className="Text-logo absolute"></img>
        <h4 className="subheader subheader--bottom absolute w-100 tc">surf systems regional incorporated</h4>
      </section>
      <section className="Container flex justify-center mv5">
        <div className="w-100 w-60-l tj">
          <p className="body-copy">SSRI is a limited liability company established in the Northeast United States in the year 2020 by Tee Topor and Sean Scanlan, two MFA candidates at the Design & Technology program at Parsons.</p>
        </div>
      </section>
    </Layout>
  )
}

export async function getStaticProps(context) {
  return {
    props: {}
  }
}
