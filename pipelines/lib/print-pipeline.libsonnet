function(message='hello-world') {
  jobs: [
    {
      name: 'message',
      plan: [
        {
          task: 'echo-whatever',
          config: {
            platform: 'linux',
            image_resource: {
              type: 'registry-image',
              source: {
                repository: 'busybox',
              },
            },
            run: {
              path: 'echo',
              args: [message],
            },
          },
        },
      ],
    },
  ],
}