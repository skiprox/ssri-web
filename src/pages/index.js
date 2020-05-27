// The modules
import Layout from 'components/Layout';
import WebGLCanvas from 'components/modules/WebGLCanvas';

export default function Home(context) {
  return (
    <Layout>
      <WebGLCanvas />
      <h1 className="Text-logo sans-serif ma0 fixed b w-100 tc">SSRI</h1>
    </Layout>
  )
}

export async function getStaticProps(context) {
  return {
    props: {}
  }
}
